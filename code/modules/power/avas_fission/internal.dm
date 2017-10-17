/obj/item/fission_reactor/internal
	name = "nuclear reactor internal item"
	desc = "Item inside the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "internal"
	var/condition
	var/fuel_quality = null
	var/fuel_life = null
	var/rod_quality = null
	var/system_quality = null
	var/shielding_quality = null
	var/shielding_max_temperature = null
	var/turbine_quality = null
	var/fail_percentage = null

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

/obj/item/fission_reactor/internal/circular_system
	name = "nuclear reactor circular system"
	desc = "Circular system for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "circular_system"
	system_quality = 1

/obj/item/fission_reactor/internal/shielding
	name = "nuclear reactor shielding"
	desc = "Shielding for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "shielding"
	shielding_quality = 1
	shielding_max_temperature = 1

/obj/item/fission_reactor/internal/turbine
	name = "nuclear reactor turbine"
	desc = "Turbine for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "rod"
	turbine_quality = 1

/obj/item/fission_reactor/internal/safety_system
	name = "nuclear reactor safety_system"
	desc = "Safety_system for the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "rod"
	fail_percentage = 1