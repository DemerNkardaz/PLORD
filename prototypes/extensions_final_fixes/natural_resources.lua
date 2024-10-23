local get_tree_entities = PLORD_Utils.get_objects_filtered({filter = "type", value = "tree"})

for _, entity in pairs(get_tree_entities) do
	local loot_count = entity.name:find("dead") and 5 or entity.name:find("dry") and 3 or 1
	local loot = {{type = "item", name = PLORD.pfx .. "solid_resin", amount_min = 1, amount_max = loot_count, probability = 0.6}}
	local dead_tree_loot = {{type = "item", name = PLORD.pfx .. "charcoal", amount_min = 1, amount_max = 3, probability = 0.3}}

	if not entity.name:find("ashland") then PLORD_Utils.add_loot(entity.type, entity.name, loot) end
	if entity.name:find("dead") then PLORD_Utils.add_loot(entity.type, entity.name, dead_tree_loot) end
end