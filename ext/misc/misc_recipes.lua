data:extend({
	{
		type = "recipe",
		name = "PLORD_tinderbox",
		enabled = true,
		energy_required = 0.1,
		ingredients = {{"PLORD_flint_ore", 1}, {"PLORD_pyrite_ore", 1}},
		result = "PLORD_tinderbox",
	},
	{
		type = "recipe",
		name = "PLORD_firsaid_kit_throw",
		enabled = true,
		energy_required = 0.1,
		ingredients = {{"PLORD_firsaid_kit", 1}},
		result = "PLORD_firsaid_kit_throw",
	},
  {
    type = "recipe",
    name = "PLORD_iron_scrap_to_iron",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"PLORD_iron_scrap", 10}},
    result = "iron-plate"
  },
  {
    type = "recipe",
    name = "PLORD_copper_scrap_to_copper",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"PLORD_copper_scrap", 10}},
    result = "copper-plate"
  },
})