/datum/xeno_strain/resin_shark
	name = BURROWER_RESIN_SHARK
	description = "bleh bleh bleh"
	flavor_description = "bleh bleh bleh"
	icon_state_prefix = "Resin Shark"

	actions_to_remove = list(
		/datum/action/xeno_action/activable/tail_stab,
		/datum/action/xeno_action/activable/corrosive_acid,
		/datum/action/xeno_action/onclick/build_tunnel,
		/datum/action/xeno_action/onclick/place_trap,
		/datum/action/xeno_action/activable/burrow,
		/datum/action/xeno_action/onclick/tremor,
	)
	actions_to_add = list(
		/datum/action/xeno_action/activable/sweep,
		/datum/action/xeno_action/activable/chomp,
		/datum/action/xeno_action/onclick/submerge,
	)

/datum/xeno_strain/resin_shark/apply_strain(mob/living/carbon/xenomorph/burrower/burrower)
	burrower.plasmapool_modifier = 1000
	burrower.health_modifier -= XENO_HEALTH_MOD_MED
	burrower.speed_modifier += XENO_SPEED_FASTMOD_TIER_1
	burrower.armor_modifier += XENO_ARMOR_MOD_LARGE
	burrower.attack_speed_modifier -= 2

	burrower.recalculate_everything()

/datum/action/xeno_action/activable/sweep/use_ability(atom/targeted_atom) //sweep ability
	var/mob/living/carbon/xenomorph/xeno = owner

	if (!istype(xeno))
		return
	if (!xeno.check_state())
		return
	if (!action_cooldown_check())
		return
	if (xeno.submerge)
		to_chat(xeno, SPAN_XENOWARNING("We cannot use that while submerged."))
		return
	xeno.spin_circle()
	xeno.visible_message(SPAN_DANGER("[xeno] whips its tail in a wide area in front of it!"), \
	SPAN_XENOWARNING("We whip our tail forward!"))
	playsound(xeno, 'sound/effects/alien_tail_swipe2.ogg', 30)
	apply_cooldown()

	//effect vars
	var/stun_duration = 0.25
	var/daze_duration = 0

	// Transient turf list
	var/list/target_turfs = list()
	var/list/temp_turfs = list()
	var/list/telegraph_atom_list = list()

	// Code to get a 1x3 area of turfs
	var/turf/root = get_turf(xeno)
	var/facing = get_dir(xeno, targeted_atom)
	var/turf/infront = get_step(root, facing)
	var/turf/infront_left = get_step(root, turn(facing, 45))
	var/turf/infront_right = get_step(root, turn(facing, -45))

	temp_turfs += infront
	if (!(!infront || infront.density))
		temp_turfs += infront_left
	if (!(!infront || infront.density))
		temp_turfs += infront_right

	for (var/turf/current_turfs in temp_turfs)

		if (!istype(current_turfs))
			continue

		if (current_turfs.density)
			continue

		target_turfs += current_turfs
		telegraph_atom_list += new /obj/effect/xenomorph/xeno_telegraph/white(current_turfs, 2)

	for (var/turf/current_turfs in target_turfs)
		for (var/mob/living/carbon/target in current_turfs)
			if (target.stat == DEAD)
				continue

			if (!isxeno_human(target) || xeno.can_not_harm(target))
				continue

			xeno.visible_message(SPAN_DANGER("[xeno] knocks [target] down!"), \
			SPAN_XENOWARNING("We topple [target]!"))
			xeno.flick_attack_overlay(target, "tackle")
			target.last_damage_data = create_cause_data(xeno.caste_type, xeno)
			log_attack("[key_name(xeno)] attacked [key_name(target)] with Sweep")
			target.apply_effect(stun_duration, WEAKEN)
			target.apply_effect(daze_duration, DAZE)
			playsound(get_turf(target), 'sound/weapons/alien_knockdown.ogg', 30, TRUE)
			xeno.animation_attack_on(target)

	xeno.emote("roar")
	return ..()

/datum/action/xeno_action/onclick/submerge/use_ability(atom/target) //submerge, sprite and state change

	var/mob/living/carbon/xenomorph/xeno = owner
	if (!istype(xeno))
		return

	if(!xeno.check_state())
		return

	if(!action_cooldown_check())
		return

	if(!xeno.submerge)
		to_chat(xeno, SPAN_XENOWARNING("We start burrowing into the ground."))
		if(!do_after(xeno, 1.5 SECONDS, INTERRUPT_ALL, BUSY_ICON_HOSTILE))
			return
		to_chat(xeno, SPAN_XENOWARNING("We burrow into the ground."))
		playsound(xeno, 'sound/effects/burrowing_b.ogg', 25)
		//xeno.ability_speed_modifier +=SSS0
		//xeno.armor_deflection_buff +=
		xeno.add_temp_pass_flags(PASS_MOB_THRU)
		xeno.mob_size = MOB_SIZE_BIG //knockback immune
		button.icon_state = "template_active"

	else
		to_chat(xeno, SPAN_XENOWARNING("We resurface."))
		playsound(xeno, 'sound/effects/burrowoff.ogg', 25)
		//xeno.ability_speed_modifier -=
		//xeno.armor_deflection_buff -=
		xeno.remove_temp_pass_flags(PASS_MOB_THRU)
		xeno.mob_size = MOB_SIZE_XENO //no longer knockback immune
		button.icon_state = "template"

	xeno.submerge = !xeno.submerge
	xeno.update_icons()
	apply_cooldown()
	return ..()

/datum/action/xeno_action/activable/chomp/use_ability(atom/target_atom)
	var/mob/living/carbon/xenomorph/xeno = owner

	if (!action_cooldown_check())
		return

	if (!xeno.check_state())
		return

	if (xeno.submerge)
		to_chat(xeno, SPAN_XENOWARNING("We cannot use that while submerged."))
		return

	if (!isxeno_human(target_atom) || xeno.can_not_harm(target_atom))
		to_chat(xeno, SPAN_XENODANGER("We must target a hostile!"))
		return

	if (!xeno.Adjacent(target_atom))
		to_chat(xeno, SPAN_XENODANGER("We must be adjacent to [target_atom]!"))
		return

	var/mob/living/carbon/target_carbon = target_atom

	if (target_carbon.stat == DEAD)
		to_chat(xeno, SPAN_XENOWARNING("[target_atom] is dead, why would we want to attack it?"))
		return

	xeno.face_atom(target_atom)

	xeno.visible_message(SPAN_DANGER("\The [xeno] tears a chunk out of [target_atom]!"), \
					SPAN_DANGER("We tear a chunk out of [target_atom]!"))

	xeno.animation_attack_on(target_atom)
	xeno.flick_attack_overlay(target_atom, "bite")
	target_carbon.handle_blood_splatter(get_dir(xeno.loc, target_carbon.loc))
	target_carbon.last_damage_data = create_cause_data(xeno.caste_type, xeno)
	log_attack("[key_name(xeno)] attacked [key_name(target_carbon)] with Sweep")
	target_carbon.apply_armoured_damage(35, ARMOR_MELEE, BRUTE, "chest", 10)
	playsound(target_carbon, 'sound/weapons/alien_bite2.ogg', 30, TRUE)
	return ..()
