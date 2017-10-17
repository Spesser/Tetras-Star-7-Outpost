/obj/machinery/power/fission_reactor/
	name = "nuclear reactor"
	desc = "Core of the nuclear reactor. Contact admin or developer if you see this"
	icon = 'icons/obj/machines/power/fission.dmi'
	icon_state = "core"
	density = 1
	use_power = 1
	idle_power_usage = null
	active_power_usage = null

	var/core_max_temp = 1000
	var/initial_temperature = 200
	var/light_e = null
	var/controls = null
	var/control_rod_position = 100
	var/circular_system_quality = null
	var/shielding_max_temp = null
	var/turbine_quality = null
	var/safety_control = null
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

/obj/machinery/power/fission_reactor//attack_ai(mob/user)
	attack_hand(user)

/obj/machinery/power/fission_reactor/Initialize()
	. = ..()
	connect_to_network()

/obj/machinery/power/fission_reactor/attackby(var/obj/item/fission_reactor/internal/A, mob/user as mob)
	if(istype(A, /obj/item/fission_reactor/internal/fuel_rod))
		if(A.fuel_life != 0)
			to_chat(user, "<span class='notice'>You add \"[A]\" into \the [src].</span>")
			src.fuel_rods += 1
			src.divide_k = A.nuclear_divide_k
			return
		else if (src.reactor_open == 1)
			to_chat(user, "<span class='notice'>You'll have to open the \"[src]\" first.</span>")
			return
		else if (fuel_rods == 10)
			to_chat(user, "<span class='notice'>All slots for fuel rods are full.</span>")
			return
		else
			to_chat(user, "<span class='notice'>This \"[A]\" is depleted.</span>")
			return

/obj/machinery/power/fission_reactor/Process(mob/user as mob)
	if(reactor_open)
		to_chat(user, "<span class='notice'>Reactor chamber opened. Close it before start.</span>")
	if(fission && fuel_rods == 10)
		max_temperature = core_max_temp + shielding_max_temp
		temperature_interchange = circular_system_quality + turbine_quality
		temperature += initial_temperature
		temperature = temperature * divide_k
		temperature -= 10





		power_produced = src.temperature * temperature_interchange
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
	ui_interact(user)