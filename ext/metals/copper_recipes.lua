data:extend({
--[[	{
	type = "recipe",
	name = "PLORD_copper_cuso4",
	localised_name = {"", {"recipe-name.PLORD_copper_electrolyte"}},
	icon = "__PLORD__/graphics/icons/fluids/copper-electolyte.png", icon_size = 64, icon_mipmaps = 4,
	category = "chemistry",
	subgroup = "fluid-recipes",
	enabled = true,
	energy_required = 0.5,
	ingredients = {
		{type="item", name="copper-plate", amount=2},
		{type="fluid", name="sulfuric-acid", amount=5},
	},
	results=
	{
		{type="item", name = "PLORD_copper_cuso4", amount=5,},
	}
	},
	{
	type = "recipe",
	name = "PLORD_copper_electrolyte",
	localised_name = {"", {"recipe-name.PLORD_copper_electrolyte"}},
	icon = "__PLORD__/graphics/icons/fluids/copper-electolyte.png", icon_size = 64, icon_mipmaps = 4,
	category = "PLORD_chemboiler_craft",
	subgroup = "fluid-recipes",
	enabled = true,
	energy_required = 0.5,
	ingredients = {
		{type="item", name="PLORD_copper_cuso4", amount=6},
		{type="fluid", name="water", amount=10},
	},
	results=
	{
		{type="fluid", name = "PLORD_copper_electrolyte", amount_min=1, amount_max=2,},
	}
	}]]--
	{
		type = "recipe",
		name = "PLORD_copper_ingot",
		ingredients = {{"copper-plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_copper_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_copper_plate_from_ingots",
		ingredients = {{"PLORD_copper_ingot", 1}},
		category = "smelting",
		result = "copper-plate",
		result_count = 6,
		energy_required = 8
	},
	{
	  type = "recipe",
	  name = "PLORD_copper_sheet",
	  category = "crafting",
	  enabled = true,
	  energy_required = 0.5,
	  ingredients = {{"copper-plate", 1}},
	  results = {{type="item", name="PLORD_copper_sheet", amount=4}},
	},
})
