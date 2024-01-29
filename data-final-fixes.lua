require("ad_recipes")
require("util_collision_masks")
local amount_max

-- Stone loot section
for e_name, entity in pairs(data.raw["simple-entity"]) do
	if e_name:find("rock") then
		if not e_name:find("volcanic") and not e_name:find("black") then
			amount_max = (e_name:find("huge") and 3) or
					(e_name:find("big") and 1) or
					(e_name:find("small") and 1) or
					(e_name:find("sand") and 2) or
					2
			PLORD_addresult("simple-entity", e_name, {name="PLORD_resin_ore", amount_min=0, amount_max=amount_max, probability = 0.3})
		end
		if not e_name:find("flitnless") then
			amount_max = (e_name:find("huge") and 1) or
					(e_name:find("big") and 1) or
					(e_name:find("small") and 0) or
					(e_name:find("sand") and 0) or
					2
			PLORD_addresult("simple-entity", e_name, {name="PLORD_flint_ore", amount_min=0, amount_max=amount_max, probability = 0.7})
		end
		if e_name:find("white") or e_name:find("black") or e_name:find("brown") then
			amount_max = (e_name:find("huge") and 5) or
					(e_name:find("big") and 1) or
					(e_name:find("small") and 0) or
					2
			PLORD_addresult("simple-entity", e_name, {name="PLORD_pyrite_ore", amount_min=0, amount_max=amount_max, probability = 0.3})
		end
		if e_name:find("volcanic") then
			amount_max = (e_name:find("huge") and 2) or
					(e_name:find("big") and 1) or
					(e_name:find("small") and 1) or
					2
			PLORD_addresult("simple-entity", e_name, {name="PLORD_obsidian_ore", amount_min=0, amount_max=amount_max, probability = 0.25})
		end
		if e_name:find("black") or e_name:find("white") then
			amount_max = (e_name:find("huge") and 1) or
					(e_name:find("big") and 1) or
					(e_name:find("small") and 1) or
					0
			PLORD_addresult("simple-entity", e_name, {name="PLORD_hematite_ore", amount_min=0, amount_max=amount_max, probability = 0.15})
		end
		entity.collision_mask = {"object-layer"}
	end
end
--[[
for e_name, entity in pairs(data.raw["simple-entity"]) do
	if e_name:find("rock") and not e_name:find("volcanic") and not e_name:find("black") then
		amount_max = (e_name:find("huge") and 3) or
				(e_name:find("big") and 1) or
				(e_name:find("small") and 1) or
				(e_name:find("sand") and 2) or
				2
		PLORD_addresult("simple-entity", e_name, {name="PLORD_resin_ore", amount_min=0, amount_max=amount_max})
	end
	if e_name:find("rock") then
		amount_max = (e_name:find("huge") and 1) or
				(e_name:find("big") and 1) or
				(e_name:find("small") and 0) or
				(e_name:find("sand") and 0) or
				2
		PLORD_addresult("simple-entity", e_name, {name="PLORD_flint_ore", amount_min=0, amount_max=amount_max})
	end
	if e_name:find("rock") and e_name:find("white") or e_name:find("black") or e_name:find("brown") then
		amount_max = (e_name:find("huge") and 5) or
				(e_name:find("big") and 1) or
				(e_name:find("small") and 0) or
				2
		PLORD_addresult("simple-entity", e_name, {name="PLORD_pyrite_ore", amount_min=0, amount_max=amount_max})
	end
	if e_name:find("rock") and e_name:find("volcanic") then
		amount_max = (e_name:find("huge") and 2) or
				(e_name:find("big") and 1) or
				(e_name:find("small") and 1) or
				2
		PLORD_addresult("simple-entity", e_name, {name="PLORD_obsidian_ore", amount_min=0, amount_max=amount_max})
	end
	if e_name:find("rock") and e_name:find("black") or e_name:find("white") then
		amount_max = (e_name:find("huge") and 1) or
				(e_name:find("big") and 1) or
				(e_name:find("small") and 1) or
				0
		PLORD_addresult("simple-entity", e_name, {name="PLORD_hematite_ore", amount_min=0, amount_max=amount_max})
	end
end

]]--


-- Tree loot section
for e_name, entity in pairs(data.raw["tree"]) do
	if e_name:find("tree") then
		 amount_max = (e_name:find("dead") and 5) or
				(e_name:find("dry") and 3)  or
				1
		PLORD_addresult("tree", e_name, {name="PLORD_resin_ore", amount_min=0, amount_max=amount_max, probability = 0.6})
	end
end


--data.raw["tile"]["water-shallow"].collision_mask = {"ground-tile"}
--data.raw["tile"]["water-mud"].collision_mask = {"ground-tile"}
--data.raw["tile"]["water"].collision_mask ={"ground-tile"}
--draw_in_water_layer = true

for e_name, entity in pairs(data.raw["tile"]) do
	if e_name:find("water") and e_name:find("deep") then
		PLORD_addtile_mask("tile", e_name, "layer-40")
	end
end