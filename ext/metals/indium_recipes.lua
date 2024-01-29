data:extend({
	{
	type = "item",
	name = "PLORD_indium_ore",
	icon = "__PLORD__/graphics/icons/aluminum/aluminum.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_metals_raw",
	order = "a-a-a",
	stack_size = 100,
	pictures = {
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		   }
	},
	{
		type = "recipe",
		name = "PLORD_indium_plate",
		ingredients = {{"PLORD_indium_ore", 1}},
		category = "smelting",
		result = "PLORD_indium_plate",
		result_count = 1
	},
	{
		type = "recipe",
		name = "PLORD_indium_ingot",
		ingredients = {{"PLORD_indium_plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_indium_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_indium_plate_from_ingots",
		ingredients = {{"PLORD_indium_ingot", 1}},
		category = "smelting",
		result = "PLORD_indium_plate",
		result_count = 6,
		energy_required = 8
	},
})