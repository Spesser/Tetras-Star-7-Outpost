/obj/item/fission_reactor/internal
	name = "nuclear reactor internal item"
	desc = "Item inside the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "internal"
	var/condition
	var/fuel_quality = null
	var/fuel_life = null
	var/rod_quality = null
	var/circular_system_quality = null
	var/shielding_quality = null
	var/shielding_max_temp = null
	var/turbine_quality = null
	var/fail_percentage = null
	var/divide_k = null

/obj/item/fission_reactor/internal/control_rod
	name = "nuclear reactor control rod"
	desc = "Control rod for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "rod"
	rod_quality = 1

/obj/item/fission_reactor/internal/fuel_rod
	name = "nuclear reactor fuel rod"
	desc = "Fuel rod for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "fuel_rod"
	fuel_quality = 1
	fuel_life = 1
	divide_k = 1.3

/obj/item/fission_reactor/internal/circular_system
	name = "nuclear reactor circular system"
	desc = "Circular system for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "circular_system"
	circular_system_quality = 1

/obj/item/fission_reactor/internal/shielding
	name = "nuclear reactor shielding"
	desc = "Shielding for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "shielding"
	shielding_max_temp = 500

/obj/item/fission_reactor/internal/turbine
	name = "nuclear reactor turbine"
	desc = "Turbine for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "turbine"
	turbine_quality = 1

/obj/item/fission_reactor/internal/safety_system
	name = "nuclear reactor safety_system"
	desc = "Safety_system for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "safety"
	fail_percentage = 0.85

/obj/item/fission_reactor/internal/control_rod/graphite
	name = "Graphite control rod"
	desc = "Control rod for the nuclear reactor. Made of graphite"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "rod"
	rod_quality = 1

/obj/item/fission_reactor/internal/circular_system/maverick
	name = "Maverick-1 circular system"
	desc = "Circular system for the nuclear reactor"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "circular_system"
	circular_system_quality = 0.16

/obj/item/fission_reactor/internal/shielding/plumbum
	name = "Plumbum reactor shielding"
	desc = "Shielding for the nuclear reactor. Made of plumbum, or lead in common"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "shielding"
	shielding_max_temp = 500

/obj/item/fission_reactor/internal/turbine/chorus
	name = "Chorus Mark 1 turbine"
	desc = "Turbine for the nuclear reactor. Used everywhere, not only in reactor, but this has port for circular system"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "turbine"
	turbine_quality = 0.16

/obj/item/fission_reactor/internal/nato
	name = "NA-TO nuclear engine safety system"
	desc = "Safety system for the nuclear reactor. They say it never works, but hey, you don't believe them"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "safety"
	fail_percentage = 0.85

/obj/item/fission_reactor/internal/fuel_rod/uranium238
	name = "Uranium-238 fuel rod"
	desc = "Uranium-238 fuel rod for the nuclear reactor. It's in the protective casing, so it won't irradiate you"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "fuel_rod"
	fuel_quality = 1
	fuel_life = 1000
	divide_k = 1.3
