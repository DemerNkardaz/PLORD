local setting_biter_small = settings.startup["PLORD_biter_loot_mult_small_biter"].value
local setting_biter_medium = settings.startup["PLORD_biter_loot_mult_medium_biter"].value
local setting_biter_big = settings.startup["PLORD_biter_loot_mult_big_biter"].value
local setting_biter_behemoth = settings.startup["PLORD_biter_loot_mult_behemoth_biter"].value







if settings.startup["PLORD_biter_loot_toggle"].value then
--[[

for e_name, entity in pairs(data.raw["unit"]) do
	if e_name:find("biter") or e_name:find("spitter") then
		 amount_multi = (e_name:find("small") and 3) or
				(e_name:find("medium") and 5)  or
				1
		PLORD_addloot("unit", e_name, loot_table_generic)
	end
end
]]--

end



if settings.startup["PLORD_biter_loot_toggle_DNA"].value then
	data.raw["unit"]["biter-small"].loot = {{item ="PLORD_biter_DNA", count_min = settings.startup["PLORD_biter_loot_DNA_mincount"], count_max = settings.startup["PLORD_biter_loot_DNA_maxcount"].value, probability = settings.startup["PLORD_biter_loot_DNA_prob"]}}

end


local loot_table_generic = {
	{item="copper-ore", count_min = 1, count_max = 2, probability = 1},
	{item="iron-ore", count_min = 1, count_max =2, probability = 1},
}
