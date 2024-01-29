local collision_mask_util = require("collision-mask-util")

local category_array = {
	data.raw["furnace"],
	data.raw["solar-panel"],
	data.raw["burner-generator"],
	data.raw["generator"],
	data.raw["electric-pole"],
	data.raw["container"],
	data.raw["boiler"],
	data.raw["assembling-machine"],
	data.raw["turret"],
	data.raw["electric-turret"],
	data.raw["ammo-turret"],
	data.raw["artillery-turret"],
	data.raw["fluid-turret"],
	data.raw["transport-belt"],
	data.raw["underground-belt"],
	data.raw["splitter"],
	data.raw["inserter"],
	data.raw["reactor"],
	data.raw["heat-pipe"],
	data.raw["pipe"],
	data.raw["pipe-to-ground"],
	data.raw["radar"],
	data.raw["lamp"],
	data.raw["wall"],
	data.raw["gate"],
	data.raw["storage-tank"]
}

for e_name, category in pairs(category_array) do
    for e_name, prototype in pairs(category) do 

    end
end

local remove_add = {remove = {"water-tile"}, add = {"layer-40"},}
local collision_masks2 = {
    ["transport-belt"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["underground-belt"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["splitter"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["inserter"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["pipe"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["pipe-to-ground"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["radar"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["lamp"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["wall"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["gate"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["storage-tank"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["fluid-turret"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["artillery-turret"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["ammo-turret"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["electric-turret"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["turret"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["unit-spawner"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["boiler"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["container"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["generator"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["solar-panel"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["electric-pole"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["furnace"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["burner-generator"] = {remove = {"water-tile"}, add = {"layer-40"},},
    ["heat-pipe"] = {remove = {"water-tile"}, add = {"layer-40"},}
}


local collision_masks = {
    ["furnace"] = remove_add,
    ["transport-belt"] = remove_add,
}


for type, masks in pairs(collision_masks) do
    local entities = data.raw[type]
    for name, prototype in pairs(entities) do
        local entity_masks = prototype.collision_mask
        if entity_masks then
            for _, mask in pairs(masks.remove) do
                whatever_remove_mask(entity_masks, mask)
            end
            for _, mask in pairs(masks.add) do
                --whatever_add_mask(entity_masks, mask)
                table.insert(entity_masks, mask)
            end
        end
    end
end


		--local collisions = collision_mask_util.get_mask(prototype)

		--collision_mask_util.add_layer(collisions, "layer-40")
		--collision_mask_util.remove_layer(collisions, "water-tile")
		--prototype.collision_mask = collisions
		--prototype.collision_mask.add_layer(collisions, "layer-40")
		--prototype.collision_mask.remove_layer(collisions, "water-tile")
		--if not e_name:find("belt") and not e_name:find("splitter") then prototype.collision_mask = {"object-layer", "layer-40", "player-layer",} end
		--if e_name:find("belt") or e_name:find("splitter") then prototype.collision_mask = {"object-layer", "layer-40", "transport-belt-layer"} end