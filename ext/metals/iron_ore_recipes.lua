data:extend({
	{
		type = "recipe",
		name = "PLORD_iron_cable",
		ingredients = {{"iron-plate", 1}},
		result = "PLORD_iron_cable",
		result_count = 4
	},
	{
	  type = "recipe",
	  name = "PLORD_iron_sheet",
	  category = "crafting",
	  enabled = true,
	  energy_required = 0.5,
	  ingredients = {{"iron-plate", 1}},
	  results = {{type="item", name="PLORD_iron_sheet", amount=4}},
	},
	{
		type = "recipe",
		name = "PLORD_iron_ingot",
		ingredients = {{"iron-plate", 6}},
		category = "PLORD_ingotsmelting",
		result = "PLORD_iron_ingot",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_iron_plate_from_ingots",
		ingredients = {{"PLORD_iron_ingot", 1}},
		category = "smelting",
		result = "iron-plate",
		result_count = 6,
		energy_required = 8
	},
})