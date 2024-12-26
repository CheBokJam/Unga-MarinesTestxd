/datum/xeno_caste/sentinel
	caste_name = "Sentinel"
	display_name = "Sentinel"
	upgrade_name = ""
	caste_desc = "A weak ranged combat alien."
	caste_type_path = /mob/living/carbon/xenomorph/sentinel
	tier = XENO_TIER_ONE
	upgrade = XENO_UPGRADE_BASETYPE

	gib_anim = "gibbed-a-small-corpse"
	gib_flick = "gibbed-a-small"

	// *** Melee Attacks *** //
	melee_damage = 16

	// *** Speed *** //
	speed = -0.9

	// *** Plasma *** //
	plasma_max = 650
	plasma_gain = 21

	// *** Health *** //
	max_health = 400

	// *** Evolution *** //
	evolution_threshold = 100

	// *** Flags *** //
	caste_flags = CASTE_EVOLUTION_ALLOWED|CASTE_ACID_BLOOD
	can_flags = CASTE_CAN_BE_QUEEN_HEALED|CASTE_CAN_BE_GIVEN_PLASMA|CASTE_CAN_BE_LEADER|CASTE_CAN_RIDE_CRUSHER|CASTE_CAN_HOLD_FACEHUGGERS|CASTE_CAN_HOLD_JELLY
	caste_traits = list(TRAIT_CAN_VENTCRAWL)

	// *** Defense *** //
	soft_armor = list(MELEE = 25, BULLET = 20, LASER = 20, ENERGY = 25, BOMB = 0, BIO = 25, FIRE = 5, ACID = 25)

	// *** Ranged Attack *** //
	spit_delay = 1.0 SECONDS
	spit_types = list(/datum/ammo/xeno/acid/toxic_spit)

	// *** Sentinel Abilities ***
	additional_stacks = 3

	// *** Minimap Icon *** //
	minimap_icon = "sentinel"

	// *** Abilities *** //
	actions = list(
		/datum/action/ability/xeno_action/xeno_resting,
		/datum/action/ability/xeno_action/watch_xeno,
		/datum/action/ability/activable/xeno/psydrain,
		/datum/action/ability/activable/xeno/corrosive_acid/drone,
		/datum/action/ability/activable/xeno/xeno_spit/toxic_spit,
		/datum/action/ability/xeno_action/toxic_slash,
		/datum/action/ability/activable/xeno/drain_sting,
	)

/datum/xeno_caste/sentinel/normal
	upgrade = XENO_UPGRADE_NORMAL

/datum/xeno_caste/sentinel/retrograde/normal
	upgrade = XENO_UPGRADE_NORMAL

/datum/xeno_caste/sentinel/primordial
	upgrade_name = "Primordial"
	caste_desc = "A doctors worst nightmare. It's stinger drips with poison."
	primordial_message = "All will succumb to our toxins. Leave noone standing."
	upgrade = XENO_UPGRADE_PRIMO

	actions = list(
		/datum/action/ability/xeno_action/xeno_resting,
		/datum/action/ability/xeno_action/watch_xeno,
		/datum/action/ability/activable/xeno/psydrain,
		/datum/action/ability/activable/xeno/corrosive_acid/drone,
		/datum/action/ability/activable/xeno/xeno_spit/toxic_spit,
		/datum/action/ability/xeno_action/toxic_slash,
		/datum/action/ability/activable/xeno/drain_sting,
		/datum/action/ability/activable/xeno/toxic_grenade,
	)

/datum/xeno_caste/sentinel/retrograde
	caste_type_path = /mob/living/carbon/xenomorph/sentinel/retrograde
	base_caste_type_path = /mob/living/carbon/xenomorph/sentinel
	upgrade_name = ""
	caste_name = "Retrograde Sentinel"
	display_name = "Sentinel"
	upgrade = XENO_UPGRADE_BASETYPE
	caste_desc = "A weak ranged combat alien. This one seems to have a different kind of spit."

		// *** Ranged Attack *** //
	spit_delay = 1 SECONDS
	spit_types = list(/datum/ammo/xeno/tox_loss, /datum/ammo/xeno/acid/passthrough)

	actions = list(
		/datum/action/ability/xeno_action/xeno_resting,
		/datum/action/ability/xeno_action/watch_xeno,
		/datum/action/ability/activable/xeno/psydrain,
		/datum/action/ability/activable/xeno/corrosive_acid/drone,
		/datum/action/ability/activable/xeno/neurotox_sting/transvitox,
		/datum/action/ability/activable/xeno/xeno_spit,
	)

/datum/xeno_caste/sentinel/retrograde/primordial
	upgrade_name = "Primordial"
	upgrade = XENO_UPGRADE_PRIMO
	caste_desc = "A neurotoxic nightmare. It's stingers drip with poison."

	actions = list(
		/datum/action/ability/xeno_action/xeno_resting,
		/datum/action/ability/xeno_action/watch_xeno,
		/datum/action/ability/activable/xeno/psydrain,
		/datum/action/ability/activable/xeno/corrosive_acid/drone,
		/datum/action/ability/activable/xeno/neurotox_sting/transvitox,
		/datum/action/ability/activable/xeno/xeno_spit,
		/datum/action/ability/activable/xeno/toxic_grenade/transvitox,
	)
