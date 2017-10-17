/obj/machinery/power/fission_reactor/
	name = "nuclear reactor"
	desc = "Core of the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "core"
	density = 1
	use_power = 1
	idle_power_usage = null
	active_power_usage = null
	var/light_e = null
	var/controls = null
	var/control_rods = null
	var/control_rods_quality = null
	var/fuel_rods = null
	var/fuel_rods_quality = null
	var/circular_system = null
	var/circular_system_quality = null
	var/shielding = null
	var/shielding_quality = null
	var/turbine = null
	var/turbine_quality = null
	var/circular_system_temperature = null
	var/safety_control = null
	var/complete = null

/obj/machinery/power/fission_reactor/Initialize()
	. = ..()
	connect_to_network()

/obj/machinery/power/fission_reactor/attackby(var/obj/item/fission_reactor/internal/A, mob/user as mob)
	if(istype(/obj/item/fission_reactor/internal/control_rod))
		if(A.condition != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.control_rods += 1
			src.control_rods_quality = A.rod_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is overused.</span>")
			return

	if(istype(/obj/item/fission_reactor/internal/fuel_rod))
		if(A.fuel_life != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.fuel_rods += 1
			src.fuel_rods_quality = A.fuel_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is depleted.</span>")
			return

	if(istype(/obj/item/fission_reactor/internal/circular_system))
		if(A.condition != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.circular_system += 1
			src.circular_system_quality = A.system_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is broken.</span>")
			return

	if(istype(/obj/item/fission_reactor/internal/shielding))
		if(A.condition != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.circular_system += 1
			src.circular_system_quality = A.system_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is broken.</span>")
			return

	if(istype(/obj/item/fission_reactor/internal/turbine))
		if(A.condition != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.circular_system += 1
			src.circular_system_quality = A.system_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is broken.</span>")
			return

	if(istype(/obj/item/fission_reactor/internal/safety_system))
		if(A.condition != 0)
			to_chat(user, "<span class='notice'>You install \"[A]\" into \the [src].</span>")
			src.circular_system += 1
			src.circular_system_quality = A.system_quality
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is broken.</span>")
			return

