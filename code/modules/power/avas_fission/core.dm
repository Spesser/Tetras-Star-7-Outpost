/obj/machinery/power/fission_reactor/
	name = "nuclear reactor"
	desc = "Core of the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "core"
	density = 1
	use_power = 1
	idle_power_usage = 50
	active_power_usage = 200

	var/core_max_temp = 1000
	var/initial_temperature = 200
	var/light_e = null
	var/rod_quality = null
	var/control_rod_position = 1
	var/circular_system_quality = null
	var/shielding_max_temp = null
	var/turbine_quality = null
	var/fail_percentage = null
	var/divide_k
	var/list/fuel_rods = null
	var/reactor_open = 0
	var/output = null
	var/power_output = null
	var/temperature = null
	var/temperature_interchange = null
	var/max_temperature = null
	var/power_produced = null
	var/fission = null
	var/minwork = 0
	var/maxwork = 100

/obj/machinery/power/fission_reactor/attack_ai(mob/user)
	attack_hand(user)

/obj/machinery/power/fission_reactor/Initialize()
	. = ..()
	connect_to_network()

/obj/machinery/power/fission_reactor/attackby(var/obj/item/fission_reactor/internal/A, mob/user as mob)
	if(istype(A, /obj/item/fission_reactor/internal/fuel_rod))
		if(A.fuel_life != 0)
			to_chat(user, "<span class='notice'>You add \"[A]\" into \the [src].</span>")
			src.fuel_rods += 1
			return
		else if (src.reactor_open == 1)
			to_chat(user, "<span class='notice'>You'll have to open the \"[src]\" first.</span>")
			return
		else if (fuel_rods.len == 10)
			to_chat(user, "<span class='notice'>All slots for fuel rods are full.</span>")
			return
		else if (A.fuel_life != 0)
			to_chat(user, "<span class='notice'>This \"[A]\" is depleted.</span>")
			return

/obj/machinery/power/fission_reactor/proc/check_divide_k()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/fuel_rod/) in src.component_parts
	if(I.divide_k != 0)
		return divide_k

/obj/machinery/power/fission_reactor/proc/check_shielding_max_temp()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/shielding/) in src.component_parts
	if(I.shielding_max_temp != 0)
		return shielding_max_temp

/obj/machinery/power/fission_reactor/proc/check_turbine_quality()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/turbine/) in src.component_parts
	if(I.turbine_quality != 0)
		return turbine_quality

/obj/machinery/power/fission_reactor/proc/check_circular_system_quality()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/circular_system/) in src.component_parts
	if(I.circular_system_quality != 0)
		return circular_system_quality

/obj/machinery/power/fission_reactor/proc/check_control_rod_quality()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/control_rod/) in src.component_parts
	if(I.rod_quality != 0)
		return rod_quality

/obj/machinery/power/fission_reactor/proc/check_safety_system_quality()
	var/obj/item/I = locate(/obj/item/fission_reactor/internal/safety_system/) in src.component_parts
	if(I.fail_percentage != 0)
		return fail_percentage


/obj/machinery/power/fission_reactor/Process(mob/user as mob)
	if(!fission)
		return

	if(reactor_open) to_chat(user, "<span class='notice'>Reactor chamber opened. Close it before start.</span>")
		return

	for(var/obj/item/I in src.fuel_rods)
		if(I.fuel_life == 0)
			fission = 0
			return
		if(control_rod_position == 1)
			fission = 0
			return
		if(fission && fuel_rods == 10)
			max_temperature = core_max_temp + shielding_max_temp
			temperature_interchange = circular_system_quality + turbine_quality
			temperature += initial_temperature
			temperature *= (divide_k * control_rod_position)
			temperature -= 10
			I.fuel_life -= 1





			power_produced = temperature * temperature_interchange
			add_avail(power_produced)



/obj/machinery/power/fission_reactor/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	// this is the data which will be sent to the ui

	var/data[0]
	data["totalOutput"] = power_produced
	data["totalTemperature"] = temperature
	data["maxTotalTemperature"] = max_temperature
	data["controlRodPosition"] = control_rod_position
	data["fuelRods"] = fuel_rods
	data["divideCoefficient"] = divide_k
	data["fission"] = fission ? 1 : 0





	// update the ui if it exists, returns null if no ui is passed/found
	ui = GLOB.nanomanager.try_update_ui(user, src, ui_key, ui, data, force_open)
	if(!ui)
		// the ui does not exist, so we'll create a new() one
		// for a list of parameters and their descriptions see the code docs in \code\modules\nano\nanoui.dm
		ui = new(user, src, ui_key, "fission_reactor.tmpl", "Fission Reactor", 700, 700)
		// when the ui is first opened this is the data it will use
		ui.set_initial_data(data)
		// open the new ui window
		ui.open()
		// auto update every Master Controller tick
		ui.set_auto_update(1)


/obj/machinery/power/fission_reactor/Topic(href, href_list)
	if(..())
		return 1

	if(href_list["fission"])
		fission = !fission
		. = 1
	if (href_list["rod_adj"])
		var/diff = text2num(href_list["rod_adj"])
		control_rod_position = Clamp(control_rod_position+diff, minwork, maxwork)
		. = 1

/obj/machinery/power/fission_reactor/attack_hand(mob/user)
	if(reactor_open)
		to_chat(user, "<span class='notice'>You've closed the [src] chamber</span>")
		reactor_open = 0
		return
	if(!reactor_open)
		to_chat(user, "<span class='notice'>You've opened the [src] chamber</span>")
		reactor_open = 1
		return

/obj/machinery/power/fission_reactor/verb/open_controls(mob/user as mob)
	name = "Open reactor controls"
	ui_interact(user)

/obj/machinery/power/fission_reactor/habar
	name = "Habar X-1 Nuclear Reactor"
	desc = "Habar X-1 Nuclear Reactor, old but trustworhy, don't expect a lot from it though."
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "core"

/obj/machinery/power/fission_reactor/habar/New()
	..()

	component_parts = list()
	component_parts += new /obj/item/fission_reactor/internal/control_rod/graphite(src)
	component_parts += new /obj/item/fission_reactor/internal/circular_system/maverick(src)
	component_parts += new /obj/item/fission_reactor/internal/shielding/plumbum(src)
	component_parts += new /obj/item/fission_reactor/internal/turbine/chorus(src)
	component_parts += new /obj/item/fission_reactor/internal/nato(src)

	RefreshParts()
