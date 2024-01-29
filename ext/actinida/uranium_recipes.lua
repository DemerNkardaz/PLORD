data.raw["recipe"]["uranium-rounds-magazine"].ingredients = {{"piercing-rounds-magazine", 1}, {"PLORD_uranium_plate", 1}}
data.raw["recipe"]["uranium-fuel-cell"].ingredients = {{"PLORD_iron_ingot", 2}, {"PLORD_uranium_ingot_depleted", 1}, {"PLORD_uranium_ingot_enriched", 4}}
---data.raw["recipe"]["kovarex-enrichment-process"].ingredients = {{"PLORD_uranium_ingot_enriched", 5}, {"PLORD_uranium_ingot_depleted", 1}}

data:extend({
	{
		type = "recipe",
		name = "PLORD_uranium_plate",
		ingredients = {{"PLORD_uranium_ingot_depleted", 1}},
		category = "smelting",
		subgroup = "PLORD_grp_uranica", order = "a-a-d",
		result = "PLORD_uranium_plate",
		result_count = 6,
		energy_required = 8
	},
	{
		type = "recipe",
		name = "PLORD_uranium_ingot",
		ingredients = {{"uranium-ore", 4}},
		category = "PLORD_radiosmelting",
		subgroup = "PLORD_grp_uranica", order = "a-a-a",
		result = "PLORD_uranium_ingot",
		result_count = 4
	},
	{
		type = "recipe",
		name = "PLORD_uranium_ingot_enriched",
		ingredients = {{"uranium-235", 6}},
		category = "PLORD_radiosmelting",
		subgroup = "PLORD_grp_uranica", order = "a-a-b",
		result = "PLORD_uranium_ingot_enriched",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_uranium_ingot_depleted",
		ingredients = {{"uranium-238", 6}},
		category = "smelting",
		subgroup = "PLORD_grp_uranica", order = "a-a-c",
		result = "PLORD_uranium_ingot_depleted",
		result_count = 1,
		energy_required = 10
	},
	{
		type = "recipe",
		name = "PLORD_uranium_ingot_depleted_from_plate",
		ingredients = {{"PLORD_uranium_plate", 6}},
		category = "smelting",
		subgroup = "PLORD_grp_uranica", order = "a-a-c",
		result = "PLORD_uranium_ingot_depleted",
		result_count = 1,
		energy_required = 9
	},
	{
		type = "recipe",
		name = "PLORD_aurotitan_uranium_stick",
		energy_required = 10,
		category = "crafting",
		subgroup = "PLORD_grp_metals_fpro2", order = "a-a-u-u",
		ingredients =
		{
		  {"PLORD_aurotitanium_ingot", 10},
		  {"PLORD_chrome_ingot", 5},
		  {"PLORD_gold_ingot", 2},
		  {"PLORD_uranium_ingot_enriched", 5},
		  {"PLORD_uranium_ingot_depleted", 1}
		},
		result = "PLORD_aurotitan_uranium_stick",
		result_count = 1,
		energy_required = 15
	},
})