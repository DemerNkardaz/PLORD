data:extend({
	{
		type = "recipe",
		name = "PLORD_gold_plate",
		ingredients = {{"PLORD_gold_ore", 1}},
		category = "smelting",
		result = "PLORD_gold_plate",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_gold_cable",
		ingredients = {{"PLORD_gold_plate", 1}},
		result = "PLORD_gold_cable",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_gold_ingot",
		ingredients = {{"PLORD_gold_plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_gold_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_gold_plate_from_ingots",
		ingredients = {{"PLORD_gold_ingot", 1}},
		category = "smelting",
		result = "PLORD_gold_plate",
		result_count = 6,
		energy_required = 8
	},
	{
		type = "recipe",
		name = "PLORD_aurotitanium_ingot",
		ingredients = {{"PLORD_gold_ingot", 2}, {"PLORD_titan_ingot", 8}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_aurotitanium_ingot",
		result_count = 1,
		energy_required = 20
	},
	{
		type = "recipe",
		name = "PLORD_aurotitanium_gear_wheel",
		normal =
		{
			ingredients = {{"PLORD_aurotitanium_ingot", 1}},
			result = "PLORD_aurotitanium_gear_wheel",
			result_count = 4
		},
		expensive =
		{
			ingredients = {{"PLORD_aurotitanium_ingot", 2}},
			result = "PLORD_aurotitanium_gear_wheel",
			result_count = 4
		}
	},
})