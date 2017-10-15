/*
/datum/map/torch
	branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps,
		/datum/mil_branch/civilian
	)

	spawn_branch_types = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet,
		/datum/mil_branch/marine_corps,
		/datum/mil_branch/civilian
	)

	species_to_branch_whitelist = list(
		/datum/species/diona   = list(/datum/mil_branch/civilian),
		/datum/species/nabber  = list(/datum/mil_branch/civilian),
		/datum/species/tajaran = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/skrell  = list(/datum/mil_branch/civilian, /datum/mil_branch/expeditionary_corps),
		/datum/species/unathi  = list(/datum/mil_branch/civilian),
		/datum/species/vox     = list()
	)

	species_to_branch_blacklist = list(
		/datum/species/machine = list(/datum/mil_branch/marine_corps)
	)

	species_to_rank_whitelist = list(
		/datum/species/machine = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e2,
				/datum/mil_rank/ec/e4,
				/datum/mil_rank/ec/o1
			),
			/datum/mil_branch/fleet = list(
				/datum/mil_rank/fleet/e1,
				/datum/mil_rank/fleet/e2,
				/datum/mil_rank/fleet/e3,
				/datum/mil_rank/fleet/e4,
				/datum/mil_rank/fleet/e5,
				/datum/mil_rank/fleet/o1
			)
		),
		/datum/species/tajaran = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e2,
				/datum/mil_rank/ec/e4,
				/datum/mil_rank/ec/o1
			)
		),
		/datum/species/skrell = list(
			/datum/mil_branch/expeditionary_corps = list(
				/datum/mil_rank/ec/e2,
				/datum/mil_rank/ec/e4,
				/datum/mil_rank/ec/o1
			)
		)
	)


/*
 *  Branches
 *  ========
 */

/datum/mil_branch/expeditionary_corps
	name = "Expeditionary Corps"
	name_short = "SCGEC"
	email_domain = "torch.ec.scg"

	rank_types = list(
		/datum/mil_rank/ec/e2,
		/datum/mil_rank/ec/e4,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	spawn_rank_types = list(
		/datum/mil_rank/ec/e2,
		/datum/mil_rank/ec/e4,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o5,
		/datum/mil_rank/ec/o6
	)

	assistant_job = "Crewman"

/datum/mil_branch/fleet
	name = "Fleet"
	name_short = "SCGF"
	email_domain = "torch.fleet.mil"

	rank_types = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e9_alt2,
		/datum/mil_rank/fleet/e9_alt3,
		/datum/mil_rank/fleet/e9_alt4,
		/datum/mil_rank/fleet/w1,
		/datum/mil_rank/fleet/w2,
		/datum/mil_rank/fleet/w3,
		/datum/mil_rank/fleet/w4,
		/datum/mil_rank/fleet/w5,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6,
		/datum/mil_rank/fleet/o7,
		/datum/mil_rank/fleet/o8,
		/datum/mil_rank/fleet/o9,
		/datum/mil_rank/fleet/o10,
		/datum/mil_rank/fleet/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5
	)

	assistant_job = "Crewman"

/datum/mil_branch/marine_corps
	name = "Marine Corps"
	name_short = "SCGMC"
	email_domain = "torch.marine.mil"

	rank_types = list(
		/datum/mil_rank/marine/e1,
		/datum/mil_rank/marine/e2,
		/datum/mil_rank/marine/e3,
		/datum/mil_rank/marine/e4,
		/datum/mil_rank/marine/e5,
		/datum/mil_rank/marine/e6,
		/datum/mil_rank/marine/e7,
		/datum/mil_rank/marine/e8,
		/datum/mil_rank/marine/e8_alt,
		/datum/mil_rank/marine/e9,
		/datum/mil_rank/marine/e9_alt1,
		/datum/mil_rank/marine/e9_alt2,
		/datum/mil_rank/marine/w1,
		/datum/mil_rank/marine/w2,
		/datum/mil_rank/marine/w3,
		/datum/mil_rank/marine/w4,
		/datum/mil_rank/marine/w5,
		/datum/mil_rank/marine/o1,
		/datum/mil_rank/marine/o2,
		/datum/mil_rank/marine/o3,
		/datum/mil_rank/marine/o4,
		/datum/mil_rank/marine/o5,
		/datum/mil_rank/marine/o6,
		/datum/mil_rank/marine/o7,
		/datum/mil_rank/marine/o8,
		/datum/mil_rank/marine/o9,
		/datum/mil_rank/marine/o10,
		/datum/mil_rank/marine/o10_alt,
	)

	spawn_rank_types = list(
		/datum/mil_rank/marine/e2,
		/datum/mil_rank/marine/e3,
		/datum/mil_rank/marine/e4,
		/datum/mil_rank/marine/e5,
		/datum/mil_rank/marine/e6,
		/datum/mil_rank/marine/e7,
		/datum/mil_rank/marine/e8,
		/datum/mil_rank/marine/e8_alt,
		/datum/mil_rank/marine/e9,
		/datum/mil_rank/marine/e9_alt1,
		/datum/mil_rank/marine/o1,
		/datum/mil_rank/marine/o2,
		/datum/mil_rank/marine/o3,
		/datum/mil_rank/marine/o4,
		/datum/mil_rank/marine/o5
	)

	assistant_job = "Crewman"

/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "civ"
	email_domain = "freemail.nt"

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/nt,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/offduty,
		/datum/mil_rank/civ/synthetic
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/nt,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/offduty,
		/datum/mil_rank/civ/synthetic
	)

	assistant_job = "Passenger"

/datum/mil_rank/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"
/*
 *  Fleet
 *  =====
 */

/datum/mil_rank/fleet/e1
	name = "Crewman Recruit"
	name_short = "CR"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 1

/datum/mil_rank/fleet/e2
	name = "Crewman Apprentice"
	name_short = "CA"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e2, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 2

/datum/mil_rank/fleet/e3
	name = "Crewman"
	name_short = "CN"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e3, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 3

/datum/mil_rank/fleet/e4
	name = "Petty Officer Third Class"
	name_short = "PO3"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e4, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 4

/datum/mil_rank/fleet/e5
	name = "Petty Officer Second Class"
	name_short = "PO2"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e5, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 5

/datum/mil_rank/fleet/e6
	name = "Petty Officer First Class"
	name_short = "PO1"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e6, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 6

/datum/mil_rank/fleet/e7
	name = "Chief Petty Officer"
	name_short = "CPO"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e7, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 7

/datum/mil_rank/fleet/e8
	name = "Senior Chief Petty Officer"
	name_short = "SCPO"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e8, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 8

/datum/mil_rank/fleet/e9
	name = "Master Chief Petty Officer"
	name_short = "MCPO"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e9, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt1
	name = "Command Master Chief Petty Officer"
	name_short = "CMDCM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e9_alt1, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt2
	name = "Fleet Master Chief Petty Officer"
	name_short = "FLTCM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e9_alt2, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt3
	name = "Force Master Chief Petty Officer"
	name_short = "FORCM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e9_alt3, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/e9_alt4
	name = "Master Chief Petty Officer of the Fleet"
	name_short = "MCPOF"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/enlisted/e9_alt4, /obj/item/clothing/accessory/specialty/enlisted)
	sort_order = 9

/datum/mil_rank/fleet/w1
	name = "Warrant Officer 1"
	name_short = "WO1"
	sort_order = -1

/datum/mil_rank/fleet/w2
	name = "Chief Warrant Officer 2"
	name_short = "CWO2"
	sort_order = -2

/datum/mil_rank/fleet/w3
	name = "Chief Warrant Officer 3"
	name_short = "CWO3"
	sort_order = -3

/datum/mil_rank/fleet/w4
	name = "Chief Warrant Officer 4"
	name_short = "CWO4"
	sort_order = -4

/datum/mil_rank/fleet/w5
	name = "Chief Warrant Officer 5"
	name_short = "CWO5"
	sort_order = -5

/datum/mil_rank/fleet/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 11

/datum/mil_rank/fleet/o2
	name = "Lieutenant (junior grade)"
	name_short = "LTJG"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer/o2, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 12

/datum/mil_rank/fleet/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer/o3, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 13

/datum/mil_rank/fleet/o4
	name = "Lieutenant Commander"
	name_short = "LCDR"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer/o4, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 14

/datum/mil_rank/fleet/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer/o5, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 15

/datum/mil_rank/fleet/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/officer/o6, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 16

/datum/mil_rank/fleet/o7
	name = "Rear Admiral (lower half)"
	name_short = "RDML"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/flag, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 17

/datum/mil_rank/fleet/o8
	name = "Rear Admiral"
	name_short = "RADM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/flag/o8, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 18

/datum/mil_rank/fleet/o9
	name = "Vice Admiral"
	name_short = "VADM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/flag/o9, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 19

/datum/mil_rank/fleet/o10
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/flag/o10, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 20

/datum/mil_rank/fleet/o10_alt
	name = "Fleet Admiral"
	name_short = "FADM"
	accessory = list(/obj/item/clothing/accessory/rank/fleet/flag/o10_alt, /obj/item/clothing/accessory/specialty/officer)
	sort_order = 20


/*
 *  EC
 *  =====
 */
/datum/mil_rank/ec/e1
	name = "Apprentice Explorer"
	name_short = "AXPL"
	accessory = list(/obj/item/clothing/accessory/rank/ec/enlisted)
	sort_order = 1

/datum/mil_rank/ec/e2
	name = "Explorer"
	name_short = "XPL"
	accessory = list(/obj/item/clothing/accessory/rank/ec/enlisted/e2)
	sort_order = 2

/datum/mil_rank/ec/e4
	name = "Senior Explorer"
	name_short = "SXPL"
	accessory = list(/obj/item/clothing/accessory/rank/ec/enlisted/e4)
	sort_order = 5

/datum/mil_rank/ec/e7
	name = "Chief Explorer"
	name_short = "CXPL"
	accessory = list(/obj/item/clothing/accessory/rank/ec/enlisted/e7)
	sort_order = 7

/datum/mil_rank/ec/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/rank/ec/officer)
	sort_order = 11

/datum/mil_rank/ec/o3
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/rank/ec/officer/o3)
	sort_order = 13

/datum/mil_rank/ec/o5
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/rank/ec/officer/o5)
	sort_order = 15

/datum/mil_rank/ec/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/rank/ec/officer/o6)
	sort_order = 16

/datum/mil_rank/ec/o8
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/rank/ec/officer/o8)
	sort_order = 16

/*
 *  Marines
 *  =======
 */

/datum/mil_rank/marine/e1
	name = "Private"
	name_short = "Pvt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted)
	sort_order = 1

/datum/mil_rank/marine/e2
	name = "Private First Class"
	name_short = "PFC"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e2)
	sort_order = 2

/datum/mil_rank/marine/e3
	name = "Lance Corporal"
	name_short = "LCpl"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e3)
	sort_order = 3

/datum/mil_rank/marine/e4
	name = "Corporal"
	name_short = "Cpl"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e4)
	sort_order = 4

/datum/mil_rank/marine/e5
	name = "Sergeant"
	name_short = "Sgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e5)
	sort_order = 5

/datum/mil_rank/marine/e6
	name = "Staff Sergeant"
	name_short = "SSgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e6)
	sort_order = 6

/datum/mil_rank/marine/e7
	name = "Gunnery Sergeant"
	name_short = "GySgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e7)
	sort_order = 7

/datum/mil_rank/marine/e8
	name = "Master Sergeant"
	name_short = "MSgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e8)

/datum/mil_rank/marine/e8_alt
	name = "First Sergeant"
	name_short = "1st Sgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e8_alt)
	sort_order = 8

/datum/mil_rank/marine/e9
	name = "Master Gunnery Sergeant"
	name_short = "MGySgt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e9)
	sort_order = 8

/datum/mil_rank/marine/e9_alt1
	name = "Sergeant Major"
	name_short = "SgtMaj"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e9_alt1)
	sort_order = 9

/datum/mil_rank/marine/e9_alt2
	name = "Sergeant Major of the Marine Corps"
	name_short = "SMMC"
	accessory = list(/obj/item/clothing/accessory/rank/marine/enlisted/e9_alt2)
	sort_order = 9

/datum/mil_rank/marine/w1
	name = "Warrant Officer 1"
	name_short = "WO"
	sort_order = -1

/datum/mil_rank/marine/w2
	name = "Chief Warrant Officer 2"
	name_short = "CWO2"
	sort_order = -2

/datum/mil_rank/marine/w3
	name = "Chief Warrant Officer 3"
	name_short = "CWO3"
	sort_order = -3

/datum/mil_rank/marine/w4
	name = "Chief Warrant Officer 4"
	name_short = "CWO4"
	sort_order = -4

/datum/mil_rank/marine/w5
	name = "Chief Warrant Officer 5"
	name_short = "CWO5"
	sort_order = -5

/datum/mil_rank/marine/o1
	name = "Second Lieutenant"
	name_short = "2ndLt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer)
	sort_order = 11

/datum/mil_rank/marine/o2
	name = "First Lieutenant"
	name_short = "1stLt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer/o2)
	sort_order = 12

/datum/mil_rank/marine/o3
	name = "Captain"
	name_short = "Capt"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer/o3)
	sort_order = 13

/datum/mil_rank/marine/o4
	name = "Major"
	name_short = "Maj"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer/o4)
	sort_order = 14

/datum/mil_rank/marine/o5
	name = "Lieutenant Colonel"
	name_short = "LtCol"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer/o5)
	sort_order = 15

/datum/mil_rank/marine/o6
	name = "Colonel"
	name_short = "Col"
	accessory = list(/obj/item/clothing/accessory/rank/marine/officer/o6)
	sort_order = 16

/datum/mil_rank/marine/o7
	name = "Brigadier General"
	name_short = "BGen"
	accessory = list(/obj/item/clothing/accessory/rank/marine/flag)
	sort_order = 17

/datum/mil_rank/marine/o8
	name = "Major General"
	name_short = "MajGen"
	accessory = list(/obj/item/clothing/accessory/rank/marine/flag/o8)
	sort_order = 18

/datum/mil_rank/marine/o9
	name = "Lieutenant General"
	name_short = "LtGen"
	accessory = list(/obj/item/clothing/accessory/rank/marine/flag/o9)
	sort_order = 19

/datum/mil_rank/marine/o10
	name = "General"
	name_short = "Gen"
	accessory = list(/obj/item/clothing/accessory/rank/marine/flag/o10)
	sort_order = 20

/datum/mil_rank/marine/o10_alt
	name = "Commandant of the Marine Corps"
	name_short = "CMC"
	accessory = list(/obj/item/clothing/accessory/rank/marine/flag/o10_alt)
	sort_order = 20


/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"
	name_short = null

/datum/mil_rank/civ/nt
	name = "NanoTrasen Employee"

/datum/mil_rank/civ/contractor
	name = "Contractor"

/datum/mil_rank/civ/offduty
	name = "Off-Duty Personnel"

/datum/mil_rank/civ/synthetic
	name = "Synthetic"

*/

//Tetras ranks

/datum/map/torch
	branch_types = list(
		/datum/mil_branch/avalanche,
		/datum/mil_branch/sundowner,
		/datum/mil_branch/mios,
		/datum/mil_branch/chman,
		/datum/mil_branch/josephs,
		/datum/mil_branch/scamp
	)

	spawn_branch_types = list(
		/datum/mil_branch/avalanche,
		/datum/mil_branch/sundowner,
		/datum/mil_branch/mios,
		/datum/mil_branch/chman,
		/datum/mil_branch/josephs,
		/datum/mil_branch/scamp
	)

	species_to_branch_whitelist = list(
		/datum/species/diona   = list(/datum/mil_branch/mios, /datum/mil_branch/sundowner),
		/datum/species/nabber  = list(/datum/mil_branch/mios),
		/datum/species/tajaran = list(/datum/mil_branch/mios, /datum/mil_branch/sundowner, /datum/mil_branch/scamp, /datum/mil_branch/chman),
		/datum/species/skrell  = list(/datum/mil_branch/mios, /datum/mil_branch/scamp),
		/datum/species/unathi  = list(/datum/mil_branch/mios),
		/datum/species/vox     = list(/datum/mil_branch/chman)
	)

	species_to_branch_blacklist = list()
	species_to_rank_whitelist = list()

/datum/mil_branch/avalanche
	name = "Avalanche Concern"
	name_short = "Avalanche"
	email_domain = "tetras.ava.main"

	rank_types = list(
		/datum/mil_rank/ava/o7,
		/datum/mil_rank/ava/o8,
		/datum/mil_rank/ava/o9,
		/datum/mil_rank/ava/o10
	)

	spawn_rank_types = list(
		/datum/mil_rank/ava/o7,
		/datum/mil_rank/ava/o8,
		/datum/mil_rank/ava/o9
	)

	assistant_job = "Crewman"


/datum/mil_rank/ava/o7
	name = "Third Class Supervisor"
	name_short = "TCS"
	accessory = list(/obj/item/clothing/accessory/rank/ava/o7)
	sort_order = 1

/datum/mil_rank/ava/o8
	name = "Second Class Supervisor"
	name_short = "SCS"
	accessory = list(/obj/item/clothing/accessory/rank/ava/o8)
	sort_order = 2

/datum/mil_rank/ava/o9
	name = "First Class Supervisor"
	name_short = "FCS"
	accessory = list(/obj/item/clothing/accessory/rank/ava/o9)
	sort_order = 3

/datum/mil_rank/ava/o10
	name = "Grand Supervisor"
	name_short = "GS"
	accessory = list(/obj/item/clothing/accessory/rank/ava/o10)
	sort_order = 4




/datum/mil_branch/sundowner
	name = "Sundowner Pvt.Sec."
	name_short = "SPS"
	email_domain = "tetras.ava.sps"

	rank_types = list(
		/datum/mil_rank/ss/e1,
		/datum/mil_rank/ss/e2,
		/datum/mil_rank/ss/e3,
		/datum/mil_rank/ss/o1,
		/datum/mil_rank/ss/o2,
		/datum/mil_rank/ss/o3,
		/datum/mil_rank/ss/o4
	)

	spawn_rank_types = list(
		/datum/mil_rank/ss/e1,
		/datum/mil_rank/ss/e2,
		/datum/mil_rank/ss/e3,
		/datum/mil_rank/ss/o1,
		/datum/mil_rank/ss/o2,
		/datum/mil_rank/ss/o3,
		/datum/mil_rank/ss/o4
	)

	assistant_job = "Crewman"

/datum/mil_rank/ss/e1
	name = "Ryadovoy"
	name_short = "Ryadovoy"
	accessory = list(/obj/item/clothing/accessory/rank/ss/e1)
	sort_order = 1

/datum/mil_rank/ss/e2
	name = "Yefreytor"
	name_short = "Yefreytor"
	accessory = list(/obj/item/clothing/accessory/rank/ss/e2)
	sort_order = 2

/datum/mil_rank/ss/e3
	name = "Sergeant"
	name_short = "Sergeant"
	accessory = list(/obj/item/clothing/accessory/rank/ss/e3)
	sort_order = 3

/datum/mil_rank/ss/o1
	name = "Praporshik"
	name_short = "Praporshik"
	accessory = list(/obj/item/clothing/accessory/rank/ss/o1)
	sort_order = 4

/datum/mil_rank/ss/o2
	name = "Leytenant"
	name_short = "Leytenant"
	accessory = list(/obj/item/clothing/accessory/rank/ss/o2)
	sort_order = 5

/datum/mil_rank/ss/o3
	name = "Kapitan"
	name_short = "Kapitan"
	accessory = list(/obj/item/clothing/accessory/rank/ss/o3)
	sort_order = 6

/datum/mil_rank/ss/o4
	name = "Major"
	name_short = "Major"
	accessory = list(/obj/item/clothing/accessory/rank/ss/o4)
	sort_order = 7




/datum/mil_branch/mios
	name = "Mio's Services"
	name_short = "MS"
	email_domain = "tetras.ava.ms"

	rank_types = list(
		/datum/mil_rank/ms/e1,
		/datum/mil_rank/ms/e2,
		/datum/mil_rank/ms/e3,
		/datum/mil_rank/ms/e4,
		/datum/mil_rank/ms/w1,
		/datum/mil_rank/ms/o1
	)

	spawn_rank_types = list(
		/datum/mil_rank/ms/e1,
		/datum/mil_rank/ms/e2,
		/datum/mil_rank/ms/e3,
		/datum/mil_rank/ms/e4,
		/datum/mil_rank/ms/w1,
		/datum/mil_rank/ms/o1
	)

	assistant_job = "Crewman"

/datum/mil_rank/ms/e1
	name = "Trial Serviceman"
	name_short = "TLS"
	accessory = list(/obj/item/clothing/accessory/rank/ms/e1)
	sort_order = 1

/datum/mil_rank/ms/e2
	name = "Junior Serviceman"
	name_short = "JRS"
	accessory = list(/obj/item/clothing/accessory/rank/ms/enlisted)
	sort_order = 2

/datum/mil_rank/ms/e3
	name = "Serviceman"
	name_short = "S"
	accessory = list(/obj/item/clothing/accessory/rank/ms/enlisted)
	sort_order = 3

/datum/mil_rank/ms/e4
	name = "Major Serviceman"
	name_short = "MJS"
	accessory = list(/obj/item/clothing/accessory/rank/ms/enlisted)
	sort_order = 4

/datum/mil_rank/ms/w1
	name = "Overseer"
	name_short = "OS"
	accessory = list(/obj/item/clothing/accessory/rank/ms/overseer)
	sort_order = 5

/datum/mil_rank/ms/o1
	name = "Manager"
	name_short = "HO"
	accessory = list(/obj/item/clothing/accessory/rank/ms/overseer)
	sort_order = 6



/datum/mil_branch/chman
	name = "ChMan Industries and Mining"
	name_short = "CIM"
	email_domain = "tetras.ava.cIm"

	rank_types = list(
		/datum/mil_rank/cm/e1,
		/datum/mil_rank/cm/e2,
		/datum/mil_rank/cm/e3,
		/datum/mil_rank/cm/e4,
		/datum/mil_rank/cm/w1,
		/datum/mil_rank/cm/o1
	)

	spawn_rank_types = list(
		/datum/mil_rank/cm/e1,
		/datum/mil_rank/cm/e2,
		/datum/mil_rank/cm/e3,
		/datum/mil_rank/cm/e4,
		/datum/mil_rank/cm/w1,
		/datum/mil_rank/cm/o1
	)

	assistant_job = "Crewman"

/datum/mil_rank/cm/e1
	name = "Cooperator"
	name_short = "CP"
	accessory = list(/obj/item/clothing/accessory/rank/cm/e1)
	sort_order = 1

/datum/mil_rank/cm/e2
	name = "Junior Worker"
	name_short = "JW"
	accessory = list(/obj/item/clothing/accessory/rank/cm/enlisted)
	sort_order = 2

/datum/mil_rank/cm/e3
	name = "Worker"
	name_short = "W"
	accessory = list(/obj/item/clothing/accessory/rank/cm/enlisted)
	sort_order = 3

/datum/mil_rank/cm/e4
	name = "Major Worker"
	name_short = "MW"
	accessory = list(/obj/item/clothing/accessory/rank/cm/enlisted)
	sort_order = 4

/datum/mil_rank/cm/w1
	name = "Head Overseer"
	name_short = "HOS"
	accessory = list(/obj/item/clothing/accessory/rank/cm/inspector)
	sort_order = 5

/datum/mil_rank/cm/o1
	name = "Technical Inspector and Manager"
	name_short = "TIM"
	accessory = list(/obj/item/clothing/accessory/rank/cm/inspector)
	sort_order = 6



/datum/mil_branch/josephs
	name = "Dr.Josephs Med&Genetics"
	name_short = "Josephs"
	email_domain = "tetras.ava.jose"

	rank_types = list(
		/datum/mil_rank/jose/e1,
		/datum/mil_rank/jose/e2,
		/datum/mil_rank/jose/e3,
		/datum/mil_rank/jose/o1,
		/datum/mil_rank/jose/o2,
		/datum/mil_rank/jose/o3,
		/datum/mil_rank/jose/o4
	)

	spawn_rank_types = list(
		/datum/mil_rank/jose/e1,
		/datum/mil_rank/jose/e2,
		/datum/mil_rank/jose/e3,
		/datum/mil_rank/jose/o1,
		/datum/mil_rank/jose/o2,
		/datum/mil_rank/jose/o3,
		/datum/mil_rank/jose/o4
	)

	assistant_job = "Crewman"

/datum/mil_rank/jose/e1
	name = "Aspirant"
	name_short = "A"
	accessory = list(/obj/item/clothing/accessory/rank/jose/e1)
	sort_order = 1

/datum/mil_rank/jose/e2
	name = "Nurse"
	name_short = "N"
	accessory = list(/obj/item/clothing/accessory/rank/jose/nurse)
	sort_order = 2

/datum/mil_rank/jose/e3
	name = "Head Nurse"
	name_short = "HN"
	accessory = list(/obj/item/clothing/accessory/rank/jose/nurse)
	sort_order = 3

/datum/mil_rank/jose/o1
	name = "Doctor"
	name_short = "D"
	accessory = list(/obj/item/clothing/accessory/rank/jose/doctor)
	sort_order = 4

/datum/mil_rank/jose/o2
	name = "Head Doctor"
	name_short = "HD"
	accessory = list(/obj/item/clothing/accessory/rank/jose/doctor)
	sort_order = 5

/datum/mil_rank/jose/o3
	name = "First-professional"
	name_short = "FP"
	accessory = list(/obj/item/clothing/accessory/rank/jose/o3)
	sort_order = 6

/datum/mil_rank/jose/o4
	name = "Doctor of Medical Sciences"
	name_short = "DMS"
	accessory = list(/obj/item/clothing/accessory/rank/jose/o4)
	sort_order = 7



/datum/mil_branch/scamp
	name = "SCA-MP R&D"
	name_short = "SCAMP"
	email_domain = "tetras.ava.scamp"

	rank_types = list(
		/datum/mil_rank/sc/e1,
		/datum/mil_rank/sc/e2,
		/datum/mil_rank/sc/e3,
		/datum/mil_rank/sc/e4,
		/datum/mil_rank/sc/e5,
		/datum/mil_rank/sc/e6,
		/datum/mil_rank/sc/w1,
		/datum/mil_rank/sc/w2,
		/datum/mil_rank/sc/w3,
		/datum/mil_rank/sc/w4,
		/datum/mil_rank/sc/o1,
		/datum/mil_rank/sc/o2
	)

	spawn_rank_types = list(
		/datum/mil_rank/sc/e2,
		/datum/mil_rank/sc/e3,
		/datum/mil_rank/sc/e4,
		/datum/mil_rank/sc/e5,
		/datum/mil_rank/sc/w1,
		/datum/mil_rank/sc/w2,
		/datum/mil_rank/sc/o1
	)

	assistant_job = "Crewman"

/datum/mil_rank/sc/e1
	name = "Abiturient"
	name_short = "ABT"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e1)
	sort_order = 1

/datum/mil_rank/sc/e2
	name = "Student"
	name_short = "ST"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e1)
	sort_order = 2

/datum/mil_rank/sc/e3
	name = "Associate"
	name_short = "ASSC"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e2)
	sort_order = 3

/datum/mil_rank/sc/e4
	name = "Major Associate"
	name_short = "MASSC"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e2)
	sort_order = 4

/datum/mil_rank/sc/e5
	name = "Bachelor"
	name_short = "BAC"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e3)
	sort_order = 5

/datum/mil_rank/sc/e6
	name = "Major Bachelor"
	name_short = "MBAC"
	accessory = list(/obj/item/clothing/accessory/rank/sc/e3)
	sort_order = 6

/datum/mil_rank/sc/w1
	name = "Master of Arts"
	name_short = "MAS"
	accessory = list(/obj/item/clothing/accessory/rank/sc/w1)
	sort_order = 7

/datum/mil_rank/sc/w2
	name = "Master of Sciences"
	name_short = "MoS"
	accessory = list(/obj/item/clothing/accessory/rank/sc/w1)
	sort_order = 1

/datum/mil_rank/sc/w3
	name = "Doctor of Arts"
	name_short = "D"
	accessory = list(/obj/item/clothing/accessory/rank/sc/w1)
	sort_order = 2

/datum/mil_rank/sc/w4
	name = "Doctor of Sciences"
	name_short = "DS"
	accessory = list(/obj/item/clothing/accessory/rank/sc/w1)
	sort_order = 3

/datum/mil_rank/sc/o1
	name = "Head of Sciences Candidate"
	name_short = "HoSSC"
	accessory = list(/obj/item/clothing/accessory/rank/sc/o1)
	sort_order = 4

/datum/mil_rank/sc/o2
	name = "Head of Sciences"
	name_short = "HoSS"
	accessory = list(/obj/item/clothing/accessory/rank/sc/o2)
	sort_order = 5


//AVALANCHE
