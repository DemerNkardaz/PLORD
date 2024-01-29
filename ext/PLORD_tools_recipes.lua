data.raw["recipe"]["repair-pack"].ingredients = {{"iron-plate", 1}, {"electronic-circuit", 2}, {"iron-gear-wheel", 2}}
data.raw["recipe"]["repair-pack"].localised_name = {"", {"item-name.PLORD_iron_repair_pack"}}

data:extend({
	{
		type = "recipe",
		name = "PLORD_steel_repair_pack",
		ingredients = {{"steel-plate", 1}, {"electronic-circuit", 2}, {"iron-gear-wheel", 2}},
		energy_required = 2,
		result = "PLORD_steel_repair_pack"
	},
	{
		type = "recipe",
		name = "PLORD_titan_repair_pack",
		ingredients = {{"PLORD_titan_plate", 1}, {"electronic-circuit", 2}, {"PLORD_titan_gear_wheel", 2}},
		energy_required = 4,
		result = "PLORD_titan_repair_pack"
	},
	{
		type = "recipe",
		name = "PLORD_aurotitan_repair_pack",
		ingredients = {{"PLORD_aurotitanium_plate", 1}, {"advanced-circuit", 2}, {"PLORD_aurotitanium_gear_wheel", 2}},
		energy_required = 5,
		result = "PLORD_aurotitan_repair_pack"
	},
	{
		type = "recipe",
		name = "PLORD_power_repair_pack",
		ingredients = {{"PLORD_titan_plate", 10}, {"advanced-circuit", 5}, {"effectivity-module", 2}, {"PLORD_silver_cable", 5}, {"PLORD_indium_plate", 4}},
		energy_required = 5,
		result = "PLORD_power_repair_pack"
	},
	{
		type = "recipe",
		name = "PLORD_enhanced_power_repair_pack",
		ingredients = {{"PLORD_aurotitanium_plate", 10}, {"processing-unit", 5}, {"effectivity-module-2", 2}, {"PLORD_silver_cable", 10}, {"PLORD_gold_cable", 5}, {"PLORD_indium_plate", 6}},
		energy_required = 10,
		result = "PLORD_enhanced_power_repair_pack"
	},
})