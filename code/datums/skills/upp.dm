/*
--------------------------
UNITED PROGRESSIVE PEOPLES
--------------------------
*/

//NOTE: UPP make up for their subpar gear with extreme training.

/datum/skills/upp
	name = "UPP Private"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_TRAINED,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_DEFAULT,
		SKILL_FIREMAN = SKILL_FIREMAN_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
	)

/datum/skills/upp/combat_engineer
	name = "UPP Sapper"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_DEFAULT,
		SKILL_FIREMAN = SKILL_FIREMAN_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
	)

/datum/skills/upp/combat_medic
	name = "UPP Medic"
	skills = list(
		SKILL_MEDICAL = SKILL_MEDICAL_DOCTOR,
		SKILL_SURGERY = SKILL_SURGERY_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_DEFAULT,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
	)

/datum/skills/upp/specialist
	name = "UPP Specialist"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_LEADERSHIP = SKILL_LEAD_TRAINED,
		SKILL_JTAC = SKILL_JTAC_TRAINED,
		SKILL_SPEC_WEAPONS = SKILL_SPEC_UPP,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
	)

/datum/skills/upp/SL
	name = "UPP Squad Leader"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_LEADERSHIP = SKILL_LEAD_EXPERT,
		SKILL_OVERWATCH = SKILL_OVERWATCH_TRAINED,
		SKILL_MEDICAL = SKILL_MEDICAL_MEDIC,
		SKILL_JTAC = SKILL_JTAC_EXPERT,
	)

/datum/skills/upp/military_police
	name = "UPP Military Police"
	skills = list(
		SKILL_CQC = SKILL_CQC_SKILLED,
		SKILL_POLICE = SKILL_POLICE_SKILLED,
		SKILL_FIREMAN = SKILL_FIREMAN_EXPERT,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_TRAINED,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
	)

/datum/skills/upp/officer
	name = "UPP Officer"
	skills = list(
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_POLICE = SKILL_POLICE_FLASH,
		SKILL_FIREMAN = SKILL_FIREMAN_EXPERT,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_LEADERSHIP = SKILL_LEAD_EXPERT,
		SKILL_OVERWATCH = SKILL_OVERWATCH_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_TRAINED,
		SKILL_MEDICAL = SKILL_MEDICAL_MEDIC,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
		SKILL_VEHICLE = SKILL_VEHICLE_SMALL,
		SKILL_JTAC = SKILL_JTAC_EXPERT,
	)

/datum/skills/upp/kapitan
	name = "UPP Kapitan"
	skills = list(
		SKILL_CQC = SKILL_CQC_SKILLED,
		SKILL_POLICE = SKILL_POLICE_SKILLED,
		SKILL_FIREMAN = SKILL_FIREMAN_EXPERT,
		SKILL_LEADERSHIP = SKILL_LEAD_MASTER,
		SKILL_OVERWATCH = SKILL_OVERWATCH_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_MEDIC,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
		SKILL_VEHICLE = SKILL_VEHICLE_SMALL,
		SKILL_JTAC = SKILL_JTAC_EXPERT,
	)

/datum/skills/upp/commander
	name = "UPP Command Officer"
	skills = list(
		SKILL_CQC = SKILL_CQC_SKILLED,
		SKILL_POLICE = SKILL_POLICE_SKILLED,
		SKILL_FIREMAN = SKILL_FIREMAN_EXPERT,
		SKILL_LEADERSHIP = SKILL_LEAD_MASTER,
		SKILL_OVERWATCH = SKILL_OVERWATCH_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_MASTER,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_MEDIC,
		SKILL_FIREARMS = SKILL_FIREARMS_EXPERT,
		SKILL_VEHICLE = SKILL_VEHICLE_SMALL,
		SKILL_JTAC = SKILL_JTAC_EXPERT,
		SKILL_EXECUTION = SKILL_EXECUTION_TRAINED,
	)
/datum/skills/upp/conscript
	name = "UPP Conscript"
	skills = list(
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
	)


//Survivor

/datum/skills/military/survivor/upp_private
	name = "UPP Private"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
		SKILL_VEHICLE = SKILL_VEHICLE_DEFAULT,
		SKILL_JTAC = SKILL_JTAC_TRAINED,
	)

/datum/skills/military/survivor/upp_sapper
	name = "UPP Sapper"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
		SKILL_VEHICLE = SKILL_VEHICLE_DEFAULT,
		SKILL_JTAC = SKILL_JTAC_TRAINED,
	)

/datum/skills/military/survivor/upp_medic
	name = "UPP Medic"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_DOCTOR,
		SKILL_SURGERY = SKILL_SURGERY_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
		SKILL_VEHICLE = SKILL_VEHICLE_DEFAULT,
		SKILL_JTAC = SKILL_JTAC_TRAINED,
	)

/datum/skills/military/survivor/upp_spec
	name = "UPP Specialist"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_TRAINED,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_MEDICAL = SKILL_MEDICAL_TRAINED,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_LEADERSHIP = SKILL_LEAD_TRAINED,
		SKILL_JTAC = SKILL_JTAC_TRAINED,
		SKILL_SPEC_WEAPONS = SKILL_SPEC_UPP,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_VEHICLE = SKILL_VEHICLE_LARGE,
	)

/datum/skills/military/survivor/upp_sl
	name = "UPP Squad Leader"
	skills = list(
		SKILL_CONSTRUCTION = SKILL_CONSTRUCTION_ENGI,
		SKILL_ENGINEER = SKILL_ENGINEER_ENGI,
		SKILL_ENDURANCE = SKILL_ENDURANCE_TRAINED,
		SKILL_SPEC_WEAPONS = SKILL_SPEC_UPP,
		SKILL_FIREARMS = SKILL_FIREARMS_TRAINED,
		SKILL_CQC = SKILL_CQC_TRAINED,
		SKILL_MELEE_WEAPONS = SKILL_MELEE_TRAINED,
		SKILL_LEADERSHIP = SKILL_LEAD_EXPERT,
		SKILL_OVERWATCH = SKILL_OVERWATCH_TRAINED,
		SKILL_MEDICAL = SKILL_MEDICAL_MEDIC,
		SKILL_VEHICLE = SKILL_VEHICLE_LARGE,
		SKILL_JTAC = SKILL_JTAC_EXPERT,
	)