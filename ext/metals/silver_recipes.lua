data:extend({
	{
		type = "recipe",
		name = "PLORD_silver_plate",
		ingredients = {{"PLORD_silver_ore", 1}},
		category = "smelting",
		result = "PLORD_silver_plate",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_silver_cable",
		ingredients = {{"PLORD_silver_plate", 1}},
		result = "PLORD_silver_cable",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_silver_ingot",
		ingredients = {{"PLORD_silver_plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_silver_ingot",
		result_count = 1,
		energy_required = 5
	},
	{
		type = "recipe",
		name = "PLORD_silver_plate_from_ingots",
		ingredients = {{"PLORD_silver_ingot", 1}},
		category = "smelting",
		result = "PLORD_silver_plate",
		result_count = 6,
		energy_required = 5
	},
})