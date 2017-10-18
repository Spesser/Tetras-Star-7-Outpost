/obj/item/weapon/circuitboard/fission_reactor
	name = T_BOARD("biogenerator")
	build_path = /obj/machinery/biogenerator
	board_type = "machine"
	origin_tech = list(TECH_POWER = 3, TECH_ENGINEERING = 2)
	req_components = list(
							/obj/item/fission_reactor/internal/control_rod = 1,
							/obj/item/fission_reactor/internal/circular_system = 1,
							/obj/item/fission_reactor/internal/shielding = 1,
							/obj/item/fission_reactor/internal/turbine = 1,
							/obj/item/fission_reactor/internal/safety_system = 1

							)