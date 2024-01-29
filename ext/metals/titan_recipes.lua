data:extend({
	{
		type = "recipe",
		name = "PLORD_titan_plate",
		ingredients = {{"PLORD_titan_ore", 1}},
		category = "smelting",
		result = "PLORD_titan_plate",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_titan_ingot",
		ingredients = {{"PLORD_titan_plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_titan_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_titan_plate_from_ingots",
		ingredients = {{"PLORD_titan_ingot", 1}},
		category = "smelting",
		result = "PLORD_titan_plate",
		result_count = 6,
		energy_required = 8
	},
	{
		type = "recipe",
		name = "PLORD_titan_gear_wheel",
		normal =
		{
			ingredients = {{"PLORD_titan_plate", 2}},
			result = "PLORD_titan_gear_wheel",
			result_count = 4
		},
		expensive =
		{
			ingredients = {{"PLORD_titan_plate", 4}},
			result = "PLORD_titan_gear_wheel",
			result_count = 4
		}
	},
})