local copy_prototype = require('__flib__.data-util').copy_prototype

require ("__base__.prototypes.entity.spawner-animation")
require ("__base__.prototypes.entity.biter-animations")
local enemy_autoplace = require ("__base__.prototypes.entity.enemy-autoplace-utils")
require ("__base__.prototypes.entity.biter-ai-settings")
local sounds = require ("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")

local biology_path = "__PLORD__/graphics/icons/biology/"
local biter_base_icon = biology_path .. "base_biter.png"
local biter_base_icon_mask_1 = biology_path .. "base_biter_mask_1.png"
local biter_base_icon_mask_2 = biology_path .. "base_biter_mask_2.png"

local spitter_base_icon = biology_path .. "base_spitter.png"
local spitter_base_icon_mask_1 = biology_path .. "base_spitter_mask_1.png"
local spitter_base_icon_mask_2 = biology_path .. "base_spitter_mask_2.png"

local worm_base_icon = biology_path .. "base_worm.png"
local worm_base_icon_mask_1 = biology_path .. "base_worm_mask_1.png"
local worm_base_icon_mask_2 = biology_path .. "base_worm_mask_2.png"

local armoured_biter_base_icon = biology_path .. "base_armoured_biter.png"
local armoured_biter_base_icon_mask_1 = biology_path .. "base_armoured_biter_mask_1.png"
local armoured_biter_base_icon_mask_2 = biology_path .. "base_armoured_biter_mask_2.png"

local biter_base_icon_mask_1_alpha = 0.9
local biter_base_icon_mask_2_alpha = 0.9
local tint_base = {r=0.75, g=0.35, b=0.35, a=1}
local tint2_base = {r=1, g=1, b=1, a=1}

local small_biter_corpse_base = data.raw["corpse"]["small-biter-corpse"]
local medium_biter_corpse_base = data.raw["corpse"]["medium-biter-corpse"]
local big_biter_corpse_base = data.raw["corpse"]["big-biter-corpse"]
local behemoth_biter_corpse_base = data.raw["corpse"]["behemoth-biter-corpse"]

local small_spitter_corpse_base = data.raw["corpse"]["small-spitter-corpse"]
local medium_spitter_corpse_base = data.raw["corpse"]["medium-spitter-corpse"]
local big_spitter_corpse_base = data.raw["corpse"]["big-spitter-corpse"]
local behemoth_spitter_corpse_base = data.raw["corpse"]["behemoth-spitter-corpse"]

local small_worm_corpse_base = data.raw["corpse"]["small-worm-corpse"]
local medium_worm_corpse_base = data.raw["corpse"]["medium-worm-corpse"]
local big_worm_corpse_base = data.raw["corpse"]["big-worm-corpse"]
local behemoth_worm_corpse_base = data.raw["corpse"]["behemoth-worm-corpse"]

local unit = data.raw["unit"]
local turret = data.raw["turret"]
local unit_spawner = data.raw["unit-spawner"]

local vanilla_small_biter_base = unit["small-biter"]
local vanilla_medium_biter_base = unit["medium-biter"]
local vanilla_big_biter_base = unit["big-biter"]
local vanilla_behemoth_biter_base = unit["behemoth-biter"]

local vanilla_small_spitter_base = unit["small-spitter"]
local vanilla_medium_spitter_base = unit["medium-spitter"]
local vanilla_big_spitter_base = unit["big-spitter"]
local vanilla_behemoth_spitter_base = unit["behemoth-spitter"]

local vanilla_small_worm_base = turret["small-worm-turret"]
local vanilla_medium_worm_base = turret["medium-worm-turret"]
local vanilla_big_worm_base = turret["big-worm-turret"]
local vanilla_behemoth_worm_base = turret["behemoth-worm-turret"]

if (mods["ArmouredBiters"]) then
local armoured_small_biter_base = unit["small-armoured-biter"]
local armoured_medium_biter_base = unit["medium-armoured-biter"]
local armoured_big_biter_base = unit["big-armoured-biter"]
local armoured_behemoth_biter_base = unit["behemoth-armoured-biter"]
local armoured_leviathan_biter_base = unit["leviathan-armoured-biter"]

armoured_small_biter_base.localised_name = {"", {"entity-name.PLORD_small_snapper"}}
armoured_small_biter_base.localised_description = {"", {"entity-description.PLORD_small_snapper"}}
armoured_medium_biter_base.localised_name = {"", {"entity-name.PLORD_medium_snapper"}}
armoured_medium_biter_base.localised_description = {"", {"entity-description.PLORD_medium_snapper"}}
armoured_big_biter_base.localised_name = {"", {"entity-name.PLORD_big_snapper"}}
armoured_big_biter_base.localised_description = {"", {"entity-description.PLORD_big_snapper"}}
armoured_behemoth_biter_base.localised_name = {"", {"entity-name.PLORD_behemoth_snapper"}}
armoured_behemoth_biter_base.localised_description = {"", {"entity-description.PLORD_behemoth_snapper"}}
armoured_leviathan_biter_base.localised_name = {"", {"entity-name.PLORD_leviathan_snapper"}}
armoured_leviathan_biter_base.localised_description = {"", {"entity-description.PLORD_leviathan_snapper"}}
end

local small_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=1, amount_max=10},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=1, amount_max=10},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=150, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=10, probability=0.1},
			})
local medium_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=2, amount_max=12},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=2, amount_max=12},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=250, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=12, probability=0.1},
			})
local big_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=5, amount_max=20},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=5, amount_max=20},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=500, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=15, probability=0.1},
			})
local behemoth_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=10, amount_max=30},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=10, amount_max=30},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=1000, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=20, probability=0.1},
			})
local leviathan_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=50, amount_max=100},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=50, amount_max=100},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=1500, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=50, probability=0.1},
			})
local megatheria_biter_loot = ({
				{type="item", name="PLORD_small_biter_brain", amount=1},
				{type="item", name="PLORD_small_biter_heart", amount=1},
				{type="item", name="PLORD_small_biter_legs", amount=6},
				{type="item", name="PLORD_small_biter_shell", amount_min=500, amount_max=2000},
				{type="item", name="PLORD_small_biter_git", amount=1},
				{type="item", name="PLORD_small_biter_blood", amount_min=500, amount_max=2000},
				{type="item", name="PLORD_small_biter_blood", amount_min=100, amount_max=5000, probability=0.1},
				{type="item", name="PLORD_small_biter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_biter_egg", amount_min=0, amount_max=1000, probability=0.1},
			})


local small_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=12},
				{type="item", name="PLORD_small_spitter_shell", amount_min=1, amount_max=10},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=1, amount_max=10},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=150, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=10, probability=0.1},
			})
local medium_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=6},
				{type="item", name="PLORD_small_spitter_shell", amount_min=2, amount_max=12},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=2, amount_max=12},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=250, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=12, probability=0.1},
			})
local big_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=6},
				{type="item", name="PLORD_small_spitter_shell", amount_min=5, amount_max=20},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=5, amount_max=20},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=500, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=15, probability=0.1},
			})
local behemoth_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=6},
				{type="item", name="PLORD_small_spitter_shell", amount_min=10, amount_max=30},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=10, amount_max=30},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=1000, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=20, probability=0.1},
			})
local leviathan_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=6},
				{type="item", name="PLORD_small_spitter_shell", amount_min=50, amount_max=100},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=50, amount_max=100},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=1500, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=50, probability=0.1},
			})
local megatheria_spitter_loot = ({
				{type="item", name="PLORD_small_spitter_brain", amount=1},
				{type="item", name="PLORD_small_spitter_heart", amount=1},
				{type="item", name="PLORD_small_spitter_legs", amount=6},
				{type="item", name="PLORD_small_spitter_shell", amount_min=500, amount_max=2000},
				{type="item", name="PLORD_small_spitter_git", amount=1},
				{type="item", name="PLORD_small_spitter_blood", amount_min=500, amount_max=2000},
				{type="item", name="PLORD_small_spitter_blood", amount_min=100, amount_max=5000, probability=0.1},
				{type="item", name="PLORD_small_spitter_lungs", amount_min=3, amount=4},
				{type="item", name="PLORD_small_spitter_egg", amount_min=0, amount_max=1000, probability=0.1},
			})

local biters_cat_lists = {
	data.raw["unit"],
	data.raw["unit-spawner"],
	data.raw["turret"],
	data.raw["corpse"]
}

-- Adding icons to Rampant and other enemies
function generate_biters_icons(tint, tint2, base_icon, base_icon_mask_1, base_icon_mask_2)
  return
  {
    {
      icon = base_icon.icon or base_icon,
      icon_size = base_icon.icon_size or 128,
      icon_mipmaps = base_icon.icon_mipmaps or 4
    },
    {
      icon = base_icon_mask_1,
      icon_size = 128,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(tint or tint_base, biter_base_icon_mask_1_alpha, true)
    },
    {
      icon = base_icon_mask_2,
      icon_size = 128,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(tint2 or tint2_base, biter_base_icon_mask_2_alpha, true)
    }
  }
end

function biters_tints_checklist(e_name)
		-- Vanilla
		if (e_name == "small-biter") or (e_name == "small-spitter")  or (e_name == "small-worm-turret") then tint = {r=0.60, g=0.58, b=0.51} tint2 = {r=0.9 , g=0.83, b=0.54} 
		elseif (e_name == "medium-biter") or (e_name == "medium-spitter")  or (e_name == "medium-worm-turret") then tint = {r=0.49, g=0.46, b=0.51} tint2 = {r=0.93, g=0.72, b=0.72} 
		elseif (e_name == "big-biter") or (e_name == "big-spitter")  or (e_name == "big-worm-turret") then tint = {r=0.37, g=0.40, b=0.72} tint2 = {r=0.55, g=0.76, b=0.75} 
		elseif (e_name == "behemoth-biter") or (e_name == "behemoth-spitter") or (e_name == "behemoth-worm-turret") then tint = {r=0.21, g=0.19, b=0.25} tint2 = {r = 0.657, g = 0.95, b = 0.432} 
		-- Rampant
		elseif e_name:find("neutral") then tint = {r=0.9, g=0.9, b=0.9, a=1} tint2 = {r=1, g=1, b=1, a=1} 
		elseif e_name:find("nuclear") then tint = {r=0.1, g=0.5, b=0.1, a=1} tint2 = {r=1, g=0.5, b=0, a=1}	
		elseif e_name:find("acid") then tint = {r=1, g=1, b=1, a=1} tint2 = {r=0.4, g=0.9, b=0.4, a=1} 
		elseif e_name:find("laser") then tint = {r=0, g=0.6, b=0.6, a=1} tint2 = {r=0, g=1, b=1, a=1} 
		elseif e_name:find("fire") then tint = {r=1, g=1, b=1, a=1} tint2 = {r=0.9, g=0.2, b=0.2, a=1} 
		elseif e_name:find("wasp") then tint = {r=1, g=1, b=0, a=1} tint2 = {r=0, g=0, b=0, a=1} 
		elseif e_name:find("spawner") then tint = {r=0.7, g=0.1, b=0.7, a=1} tint2 = {r=1, g=0.4, b=1, a=1} 
		elseif e_name:find("electric") then tint = {r=0.7, g=0.7, b=1.0, a=1} tint2 = {r=0.2, g=0.2, b=1, a=1} 
		elseif e_name:find("physical") then tint = {r=0.5, g=0.5, b=0.5, a=1} tint2 = {r=0.4, g=0.4, b=0.4, a=1} 
		elseif e_name:find("troll") then tint = {r=0.4, g=0.4, b=0.4, a=1} tint2 = {r=0.55, g=0, b=0, a=1} 
		elseif e_name:find("suicide") then tint = {r=0.8, g=0.8, b=0.8, a=1} tint2 = {r=1, g=0.5, b=0, a=1} 
		elseif e_name:find("energy-thief") then tint = {r=0.2, g=0.2, b=0.4, a=1} tint2 = {r=0.1, g=0.1, b=0.1, a=1} 
		elseif e_name:find("fast") then tint = {r=0.9, g=0.9, b=0.9, a=1} tint2 = {r=1, g=1, b=0.1, a=1} 
		elseif e_name:find("juggernaut") then tint = {r=0.7, g=0.2, b=0.2, a=1} tint2 = {r=0, g=0.7, b=0, a=0.7} 
		elseif e_name:find("poison") then tint = {r=1, g=1, b=1, a=1} tint2 = {r=0.4, g=0.9, b=0.4, a=1} 
		elseif e_name:find("arachnid") then tint = {r=0.6, g=0.2, b=1, a=1} tint2 = {r=0.6, g=0.2, b=1, a=1} 
		elseif e_name:find("spawner-spawn") then tint = {r=0.7, g=0.1, b=0.7, a=1} tint2 = {r=1, g=0.4, b=1, a=1}
		-- Cold Biters
		elseif e_name:find("cold") then tint = {r=0, g=0.1, b=0.9} tint2 = {r=1, g=1, b=1} 
		-- PLORD labs
		elseif e_name:find("young") then tint = young_biter_tint tint2 = young_biter_tint2
		elseif e_name:find("leviathan") then tint = leviathan_biter_tint tint2 = leviathan_biter_tint2
		elseif e_name:find("megatheria") then tint = megatheria_biter_tint tint2 = megatheria_biter_tint2 end
end

--[[LAB UNITS ADDITIONS FOR BIOLOGY SCIENCE]]--
young_biter_scale = 0.25
small_biter_scale = 0.5
medium_biter_scale = 0.7
big_biter_scale = 1.0
behemoth_biter_scale = 1.2
megatheria_biter_scale = 5
leviathan_biter_scale = 2.8

young_biter_tint = {r=0.8, g=0.8, b=0.8, a=0.8}
young_biter_tint2 = {r=0.3, g=0.2, b=0.4, a=0.8}
megatheria_biter_tint = {r=0.6, g=0.3, b=0.8, a=1}
megatheria_biter_tint2 = {r=0.9, g=0.5, b=0.05, a=1}
leviathan_biter_tint = {r=0.6, g=0.15, b=0.15, a=1}
leviathan_biter_tint2 = {r=0.6, g=0.55, b=0.3, a=0.7}

local artificial_small_biter = copy_prototype(vanilla_small_biter_base, "PLORD_artificial_small_biter")
artificial_small_biter.localised_name = {"entity-name.PLORD_artificial_small_biter"}
artificial_small_biter.flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air"}
artificial_small_biter.category = "PLORD_bio_engineering"
artificial_small_biter.subgroup = "PLORD_bioeng_spawns"
artificial_small_biter.order = "a-b"
artificial_small_biter.max_health = 25
artificial_small_biter.healing_per_tick = 0.05
artificial_small_biter.vision_distance = 50
artificial_small_biter.can_open_gates = true
artificial_small_biter.radar_range = 1
artificial_small_biter.minable = {mining_time = 0.2, result = "PLORD_artificial_small_biter", count = 1}

local artificial_medium_biter = copy_prototype(vanilla_medium_biter_base, "PLORD_artificial_medium_biter")
artificial_medium_biter.localised_name = {"entity-name.PLORD_artificial_medium_biter"}
artificial_medium_biter.flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air"}
artificial_medium_biter.category = "PLORD_bio_engineering"
artificial_medium_biter.subgroup = "PLORD_bioeng_spawns"
artificial_medium_biter.order = "a-c"
artificial_medium_biter.max_health = 50
artificial_medium_biter.healing_per_tick = 0.05
artificial_medium_biter.vision_distance = 50
artificial_medium_biter.can_open_gates = true
artificial_medium_biter.radar_range = 1
artificial_medium_biter.minable = {mining_time = 0.5, result = "PLORD_artificial_medium_biter", count = 1}

local artificial_big_biter = copy_prototype(vanilla_big_biter_base, "PLORD_artificial_big_biter")
artificial_big_biter.localised_name = {"entity-name.PLORD_artificial_big_biter"}
artificial_big_biter.flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air"}
artificial_big_biter.category = "PLORD_bio_engineering"
artificial_big_biter.subgroup = "PLORD_bioeng_spawns"
artificial_big_biter.order = "a-d"
artificial_big_biter.max_health = 300
artificial_big_biter.healing_per_tick = 0.05
artificial_big_biter.vision_distance = 50
artificial_big_biter.can_open_gates = true
artificial_big_biter.radar_range = 1
artificial_big_biter.minable = {mining_time = 0.7, result = "PLORD_artificial_big_biter", count = 1}

local artificial_behemoth_biter = copy_prototype(vanilla_behemoth_biter_base, "PLORD_artificial_behemoth_biter")
artificial_behemoth_biter.localised_name = {"entity-name.PLORD_artificial_behemoth_biter"}
artificial_behemoth_biter.flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air"}
artificial_behemoth_biter.category = "PLORD_bio_engineering"
artificial_behemoth_biter.subgroup = "PLORD_bioeng_spawns"
artificial_behemoth_biter.order = "a-e"
artificial_behemoth_biter.max_health = 2700
artificial_behemoth_biter.healing_per_tick = 0.15
artificial_behemoth_biter.vision_distance = 50
artificial_behemoth_biter.can_open_gates = true
artificial_behemoth_biter.radar_range = 1
artificial_behemoth_biter.minable = {mining_time = 0.7, result = "PLORD_artificial_behemoth_biter", count = 1}

local artificial_young_biter = copy_prototype(artificial_small_biter, "PLORD_artificial_young_biter")
artificial_young_biter.localised_name = {"entity-name.PLORD_artificial_young_biter"}
artificial_young_biter.order = "a-a"
artificial_young_biter.max_health = 7
artificial_young_biter.radar_range = 0
artificial_young_biter.minable = {mining_time = 0.1, result = "PLORD_artificial_young_biter", count = 1}
artificial_young_biter.attack_parameters.animation = biterattackanimation(young_biter_scale, young_biter_tint, young_biter_tint2)
artificial_young_biter.run_animation = biterrunanimation(young_biter_scale, young_biter_tint, young_biter_tint2)
artificial_young_biter.water_reflection = biter_water_reflection(young_biter_scale)
artificial_young_biter.corpse = "PLORD_young_biter_corpse"
artificial_young_biter.attack_parameters.damage_modifier = 0.5
artificial_young_biter.attack_parameters.range = 0.5

local artificial_leviathan_biter = copy_prototype(artificial_small_biter, "PLORD_artificial_leviathan_biter")
artificial_leviathan_biter.localised_name = {"entity-name.PLORD_artificial_leviathan_biter"}
artificial_leviathan_biter.order = "a-f"
artificial_leviathan_biter.max_health = 30000
artificial_leviathan_biter.healing_per_tick = 0.5
artificial_leviathan_biter.vision_distance = 70
artificial_leviathan_biter.minable = {mining_time = 1.5, result = "PLORD_artificial_leviathan_biter", count = 1}
artificial_leviathan_biter.selection_box = {{-2.9, -3.8}, {2.9, 3.6}}
artificial_leviathan_biter.collision_box = {{-1, -1}, {1, 1}}
--artificial_leviathan_biter.sticker_box = {{-1.6, -1.8}, {1.6, 0}}
artificial_leviathan_biter.attack_parameters =
    {
      type = "projectile",
      range = 3,
      damage_modifier = 4,
      cooldown = 50,
      cooldown_deviation = 0.15,
      ammo_type = make_unit_melee_ammo_type(90),
      sound =  sounds.biter_roars_behemoth(0.65),
      animation = biterattackanimation(leviathan_biter_scale, leviathan_biter_tint, leviathan_biter_tint2),
      range_mode = "bounding-box-to-bounding-box"
    }
artificial_leviathan_biter.run_animation = biterrunanimation(leviathan_biter_scale, leviathan_biter_tint, leviathan_biter_tint2)
artificial_leviathan_biter.run_animation.layers[1].animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[2].animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[3].animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[4].animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[1].hr_version.animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[2].hr_version.animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[3].hr_version.animation_speed = 0.3
artificial_leviathan_biter.run_animation.layers[4].hr_version.animation_speed = 0.3
artificial_leviathan_biter.corpse = "PLORD_leviathan_biter_corpse"
artificial_leviathan_biter.dying_explosion = "behemoth-biter-die"
artificial_leviathan_biter.dying_sound = sounds.biter_dying_big(0.52)
artificial_leviathan_biter.water_reflection = biter_water_reflection(leviathan_biter_scale)
artificial_leviathan_biter.resistances =
    {
      {
        type = "physical",
        decrease = 12,
        percent = 30
      },
      {
        type = "acid",
        decrease = 12,
        percent = 30
      },
      {
        type = "poison",
        decrease = 12,
        percent = 20
      },
			{
        type = "electric",
        decrease = 12,
        percent = 40
      },
			{
        type = "laser",
        decrease = 12,
        percent = 30
      },
			{
        type = "fire",
        decrease = 12,
        percent = 20
      },
      {
        type = "explosion",
        decrease = 12,
        percent = 20
      }
    }
artificial_leviathan_biter.movement_speed = 0.5
artificial_leviathan_biter.working_sound = sounds.biter_calls_behemoth(0.97)


local artificial_megatheria_biter = copy_prototype(artificial_small_biter, "PLORD_artificial_megatheria_biter")
artificial_megatheria_biter.localised_name = {"entity-name.PLORD_artificial_megatheria_biter"}
artificial_megatheria_biter.order = "a-g"
artificial_megatheria_biter.max_health = 100000
artificial_megatheria_biter.healing_per_tick = 0.5
artificial_megatheria_biter.vision_distance = 100
artificial_megatheria_biter.minable = {mining_time = 5, result = "PLORD_artificial_megatheria_biter", count = 1}
artificial_megatheria_biter.selection_box = {{-2.4, -4.7}, {2.4, 4.4}}
artificial_megatheria_biter.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
--artificial_megatheria_biter.sticker_box = {{-2.6, -4.8}, {2.6, 1}}
artificial_megatheria_biter.attack_parameters =
    {
      type = "projectile",
      range = 10,
      damage_modifier = 10,
      cooldown = 50,
      cooldown_deviation = 0.15,
      ammo_type = make_unit_melee_ammo_type(90),
      sound =  sounds.biter_roars_behemoth(0.65),
      animation = biterattackanimation(megatheria_biter_scale, megatheria_biter_tint, megatheria_biter_tint2),
      range_mode = "bounding-box-to-bounding-box"
    }
artificial_megatheria_biter.run_animation = biterrunanimation(megatheria_biter_scale, megatheria_biter_tint, megatheria_biter_tint2)
artificial_megatheria_biter.run_animation.layers[1].animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[2].animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[3].animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[4].animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[1].hr_version.animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[2].hr_version.animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[3].hr_version.animation_speed = 0.1
artificial_megatheria_biter.run_animation.layers[4].hr_version.animation_speed = 0.1
artificial_megatheria_biter.corpse = "PLORD_megatheria_biter_corpse"
artificial_megatheria_biter.dying_explosion = "behemoth-biter-die"
artificial_megatheria_biter.dying_sound = sounds.biter_dying_big(0.52)
artificial_megatheria_biter.water_reflection = biter_water_reflection(megatheria_biter_scale)
artificial_megatheria_biter.resistances =
    {
      {
        type = "physical",
        decrease = 12,
        percent = 50
      },
      {
        type = "acid",
        decrease = 12,
        percent = 80
      },
      {
        type = "poison",
        decrease = 12,
        percent = 80
      },
			{
        type = "electric",
        decrease = 12,
        percent = 70
      },
			{
        type = "laser",
        decrease = 12,
        percent = 60
      },
			{
        type = "fire",
        decrease = 12,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 12,
        percent = 60
      }
    }
artificial_megatheria_biter.movement_speed = 1
artificial_megatheria_biter.working_sound = sounds.biter_calls_behemoth(0.97)


local artificial_small_biter_bad_dna = copy_prototype(artificial_small_biter, "PLORD_artificial_small_biter_dna_dmg")
artificial_small_biter_bad_dna.localised_name = {"", {"entity-name.PLORD_artificial_small_biter"}, "\n", {"util-name.PLORD_dna_is_damaged"}}
artificial_small_biter_bad_dna.subgroup = "PLORD_bioeng_spawns_dna_dmg"
artificial_small_biter_bad_dna.order = "a-a"
artificial_small_biter_bad_dna.min_health = 1
artificial_small_biter_bad_dna.max_health = 5
artificial_small_biter_bad_dna.healing_per_tick = 0
artificial_small_biter_bad_dna.movement_speed = 0.05
artificial_small_biter_bad_dna.minable = {mining_time = 1, result = "PLORD_artificial_small_biter_dna_dmg", count = 1}


local artificial_small_spitter = copy_prototype(vanilla_small_spitter_base, "PLORD_artificial_small_spitter")
artificial_small_spitter.localised_name = {"entity-name.PLORD_artificial_small_spitter"}
artificial_small_spitter.flags = {"placeable-player", "placeable-off-grid", "not-repairable", "breaths-air"}
artificial_small_spitter.category = "PLORD_bio_engineering"
artificial_small_spitter.subgroup = "PLORD_bioeng_spawns"
artificial_small_spitter.order = "b-a"
artificial_small_spitter.max_health = 10
artificial_small_spitter.healing_per_tick = 0.05
artificial_small_spitter.vision_distance = 50
artificial_small_spitter.can_open_gates = true
artificial_small_spitter.radar_range = 1
artificial_small_spitter.minable = {mining_time = 1, result = "PLORD_artificial_small_spitter", count = 1}



data:extend({artificial_small_biter, artificial_medium_biter, artificial_big_biter, artificial_behemoth_biter, artificial_leviathan_biter,
artificial_small_spitter,
artificial_small_biter_bad_dna,
artificial_megatheria_biter, artificial_young_biter
})

data:extend({
  add_biter_die_animation(megatheria_biter_scale, megatheria_biter_tint, megatheria_biter_tint2,
  {
    type = "corpse",
    name = "PLORD_megatheria_biter_corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64, icon_mipmaps = 4,
    selectable_in_game = true,
    selection_box = {{-6, -6}, {6, 6}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"}
  }),
  add_biter_die_animation(young_biter_scale, young_biter_tint, young_biter_tint2,
  {
    type = "corpse",
    name = "PLORD_young_biter_corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64, icon_mipmaps = 4,
    selectable_in_game = true,
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"}
  }),
   add_biter_die_animation(leviathan_biter_scale, leviathan_biter_tint, leviathan_biter_tint2,
  {
    type = "corpse",
    name = "PLORD_leviathan_biter_corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64, icon_mipmaps = 4,
    selectable_in_game = true,
    selection_box = {{-3.8, -3.8}, {3.8, 3.8}},
    subgroup="corpses",
    order = "c[corpse]-a[biter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"}
  }),
})


for e_name, cat_lists in pairs(biters_cat_lists) do
	for e_name, entity in pairs(cat_lists) do
		biters_tints_checklist(e_name)
		if not (entity.type == "unit-spawner") then
				if e_name:find("biter") or e_name:find("spawner-spawn") and not e_name:find("armoured") then
				entity.icons = generate_biters_icons(tint, tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2) 
				elseif e_name:find("spitter") then
				entity.icons = generate_biters_icons(tint, tint2, spitter_base_icon, spitter_base_icon_mask_1, spitter_base_icon_mask_2)
				elseif e_name:find("worm") then
				entity.icons = generate_biters_icons(tint, tint2, worm_base_icon, worm_base_icon_mask_1, worm_base_icon_mask_2)
				end
		end
	end
end 

if (mods["ArmouredBiters"]) then
for e_name, entity in pairs(data.raw["unit"]) do
	if e_name:find("armoured") and e_name:find("biter") then
		if e_name:find("small") then tint = {r = 0.93, g = 0.94, b = 0.72} tint2 = {r = 0.9, g = 0.83, b = 0.54} end
		if e_name:find("medium") then tint = {r = 0.49, g = 0.46, b = 0.51} tint2 = {r = 0.93, g = 0.72, b = 0.72} end
		if e_name:find("big") then tint = {r = 0.53, g = 0.65, b = 0.90} tint2 = {r = 0.56, g = 0.54, b = 0.98} end
		if e_name:find("behemoth") then tint = {r = 0.41, g = 0.63, b = 0.40} tint2 = {r = 0.44, g = 1, b = 0.29} end
		if e_name:find("leviathan") then tint = {r = 0.9, g = 0.23, b = 0.23} tint2 = {r = 0.78, g = 0.84, b = 0} end
	entity.icons = generate_biters_icons(tint, tint2, armoured_biter_base_icon, armoured_biter_base_icon_mask_1, armoured_biter_base_icon_mask_2)
	end
		if (mods["RampantFixed"]) or (mods["Rampant"]) then
			for e_name, entity in pairs(data.raw["unit"]) do
				if e_name:find("biter") and e_name:find("physical") or e_name:find("troll") or e_name:find("juggernaut") then
				if e_name:find("physical") then tint = {r=0.5, g=0.5, b=0.5, a=1} tint2 = {r=0.4, g=0.4, b=0.4, a=1} end
				if e_name:find("troll") then tint = {r=0.65, g=0.4, b=0.45, a=1} tint2 = {r=0.4, g=0.15, b=0.2, a=1} end
				if e_name:find("juggernaut") then tint = {r=0.9, g=0.3, b=0.3, a=1} tint2 = {r=0.4, g=0.7, b=0.07, a=0.7} end
				entity.icons = generate_biters_icons(tint, tint2, armoured_biter_base_icon, armoured_biter_base_icon_mask_1, armoured_biter_base_icon_mask_2) end
			end
		end
	end
end

if (mods["PLORD_ArachnidsAddon"]) then
end


--[[MAKE LOOT FOR CORPSES]]--
for e_name, entity in pairs(data.raw["corpse"]) do
	if e_name:find("biter") or e_name:find("spitter") and not e_name:find("spawner") then
		entity.max_health = 10
		entity.selectable_in_game = true
		entity.mined_sound = {
            variations =
            {
              {filename = "__PLORD__/sound/gmod/flesh_squishy_impact_hard1.ogg", volume = 0.5},
              {filename = "__PLORD__/sound/gmod/flesh_squishy_impact_hard2.ogg", volume = 0.5},
              {filename = "__PLORD__/sound/gmod/flesh_squishy_impact_hard3.ogg", volume = 0.5},
              {filename = "__PLORD__/sound/gmod/flesh_squishy_impact_hard4.ogg", volume = 0.5}
            }
        }
	end
	if e_name:find("biter") and not e_name:find("armoured") then
		if e_name:find("small") or e_name:find("young") or e_name:find("t1-") or e_name:find("t2") then entity.minable = {mining_time = 0.25, results = small_biter_loot} end
		if e_name:find("medium") or e_name:find("t3") or e_name:find("t4") then entity.minable = {mining_time = 0.3, results = medium_biter_loot} end
		if e_name:find("big") or e_name:find("t5") or e_name:find("t6") then entity.minable = {mining_time = 0.6, results = big_biter_loot} end
		if e_name:find("behemoth") or e_name:find("t7") or e_name:find("t8") then entity.minable = {mining_time = 1, results = behemoth_biter_loot} end
		if e_name:find("leviathan") or e_name:find("t9") or e_name:find("t10") then entity.minable = {mining_time = 2, results = leviathan_biter_loot} end
		if e_name:find("megatheria") or e_name:find("t11") or e_name:find("t12") then entity.minable = {mining_time = 5, results = megatheria_biter_loot} end
		entity.localised_name = {"util-name.PLORD_biters_corpse"}
	elseif e_name:find("spitter") then 
		if e_name:find("small") or e_name:find("young") or e_name:find("t1-") or e_name:find("t2") then entity.minable = {mining_time = 0.25,results = small_spitter_loot} end
		if e_name:find("medium") or e_name:find("t3") or e_name:find("t4") then entity.minable = {mining_time = 0.3, results = medium_spitter_loot} end
		if e_name:find("big") or e_name:find("t5") or e_name:find("t6") then entity.minable = {mining_time = 0.6, results = big_spitter_loot} end
		if e_name:find("behemoth") or e_name:find("t7") or e_name:find("t8") then entity.minable = {mining_time = 1, results = behemoth_spitter_loot} end
		if e_name:find("leviathan") or e_name:find("t9") or e_name:find("t10") then entity.minable = {mining_time = 2, results = leviathan_spitter_loot} end
		if e_name:find("megatheria") or e_name:find("t11") or e_name:find("t12") then entity.minable = {mining_time = 5, results = megatheria_spitter_loot} end
		entity.localised_name = {"util-name.PLORD_spitters_corpse"}
	end
end

