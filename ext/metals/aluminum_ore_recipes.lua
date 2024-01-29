data:extend({
	{
		type = "recipe",
		name = "PLORD_aluminum_plate",
		ingredients = {{"PLORD_aluminum_ore", 1}},
		category = "smelting",
		result = "PLORD_aluminum_plate",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_aluminum_cable",
		ingredients = {{"PLORD_aluminum_plate", 1}},
		result = "PLORD_aluminum_cable",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_aluminum_ingot",
		ingredients = {{"PLORD_aluminum_plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_aluminum_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_aluminum_plate_from_ingots",
		ingredients = {{"PLORD_aluminum_ingot", 1}},
		category = "smelting",
		result = "PLORD_aluminum_plate",
		result_count = 6,
		energy_required = 8
	},
})