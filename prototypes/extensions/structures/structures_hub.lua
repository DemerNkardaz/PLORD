local crafting_categories_addition = {
	["furnace"] = {PLORD.pfx .. "wood_processing"},
}

local attributes = {
	["furnace"] = {
		{"stone-furnace", {crafting_categories = crafting_categories_addition["furnace"], energy_source = {burnt_inventory_size = 1}}},
		{"steel-furnace", {crafting_categories = crafting_categories_addition["furnace"], energy_source = {burnt_inventory_size = 2}}},
		{"electric-furnace", {crafting_categories = crafting_categories_addition["furnace"]}},
	},
}

PLORD_Utils.push_attribute_bridge(attributes)