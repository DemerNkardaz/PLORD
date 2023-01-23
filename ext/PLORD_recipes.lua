data:extend({
	{
	type = "recipe",
	name = "PLORD_chemical_boiler",
	enabled = true,
	energy_required = 1.5,
	ingredients = {{"boiler", 2}, {"copper-cable", 15}, {"steel-plate", 4}, {"pipe", 2}},
	result = "PLORD_chemical_boiler"
	},
	{
	type = "recipe",
	name = "PLORD_electrical_boiler",
	enabled = true,
	energy_required = 2.5,
	order = "b[steam-power]-a[boiler]-b[electrical]",
	ingredients = {{"boiler", 1}, {"copper-cable", 10}, {"steel-plate", 10}, {"electronic-circuit", 20}},
	result = "PLORD_electrical_boiler"
	},
	{
	type = "recipe",
	name = "PLORD_electrical_boiler_hvolt",
	enabled = true,
	energy_required = 10,
	order = "b[steam-power]-a[boiler]-c[highvoltage]",
	ingredients = {{"PLORD_electrical_boiler", 1}, {"copper-cable", 50}, {"steel-plate", 50}, {"advanced-circuit", 20}},
	result = "PLORD_electrical_boiler_hvolt"
	},
	{
	type = "recipe",
	name ="PLORD_electripole_small_iron",
	enabled = true,
	energy_required = 1,
	ingredients = {{"small-electric-pole", 1}, {"iron-stick", 2}, {"iron-plate", 2}},
	result = "PLORD_electripole_small_iron"
	},
	{
	type = "recipe",
	name ="PLORD_electripole_substation_advanced",
	enabled = true,
	energy_required = 3,
	ingredients = {{"substation", 1}, {"copper-cable", 20}, {"steel-plate", 5}, {"stone-brick", 10}},
	result = "PLORD_electripole_substation_advanced"
	},
	{
	type = "recipe",
	name ="PLORD_electripole_substation_facility",
	enabled = true,
	energy_required = 20,
	ingredients =
		{
		{"PLORD_electripole_substation_advanced", 2},
		{"accumulator", 4},
		{"copper-cable", 150},
		{"steel-plate", 50},
		{"stone-brick", 40},
		{"refined-concrete", 50},
		},
	result = "PLORD_electripole_substation_facility"
	},
})