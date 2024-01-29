local sounds = require ("__base__.prototypes.entity.sounds")
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
require("ext/environment/living_ones_anims")
local copy_prototype = require('__flib__.data-util').copy_prototype
local biology_path = "__PLORD__/graphics/icons/biology/"
local caterpillar_base_maskless_icon = biology_path .. "base_caterpillar_maskless.png"
local caterpillar_base_icon = biology_path .. "base_caterpillar.png"
local caterpillar_base_icon_mask = biology_path .. "base_caterpillar_mask.png"
local bug_base_maskless_icon = biology_path .. "base_bug_maskless.png"
local bug_base_icon = biology_path .. "base_bug.png"
local bug_base_icon_mask = biology_path .. "base_bug_mask.png"
	
sounds_caterpillar_death = function(volume)
  return
  {
	{filename = "__PLORD__/sound/creatures/caterpillar_roar_1.ogg", volume = volume},
    {filename = "__PLORD__/sound/creatures/caterpillar_roar_2.ogg", volume = volume},
    {filename = "__PLORD__/sound/creatures/caterpillar_roar_3.ogg", volume = volume},
  }
end

local small_caterpillar_scale = 0.075
local small_bug_scale = 0.1
local caterpillar_green_tint =  {r=0.9, g=0.95, b=0.17}
local caterpillar_red_tint =  {r=0.95, g=0.2, b=0.2}
local caterpillar_yellow_tint =  {r=0.95, g=0.8, b=0.35}
local caterpillar_blue_tint =  {r=0.35, g=0.40, b=0.95}
local caterpillar_purple_tint =  {r=0.7, g=0.35, b=0.95}
local caterpillar_orange_tint =  {r=0.95, g=0.6, b=0.35}

local bug_green_tint2 =  {r=0.1, g=0.1, b=0.1}
local bug_red_tint2 =  {r=0.3, g=0.3, b=0.5}
local bug_yellow_tint2 =  {r=1, g=1, b=1}
local bug_blue_tint2 =  {r=0.7, g=0.7, b=1}
local bug_purple_tint2 =  {r=1, g=0.3, b=0.95}
local bug_orange_tint2 =  {r=0.6, g=0.6, b=0.3}
local mask_1_alpha = 0.9

local function generate_caterpillar_icons(tint, caterpillar_base_icon, caterpillar_base_icon_mask)
  return
  {
    {
      icon = caterpillar_base_icon.icon or caterpillar_base_icon,
      icon_size = caterpillar_base_icon.icon_size or 64,
      icon_mipmaps = caterpillar_base_icon.icon_mipmaps or 4
    },
    {
      icon = caterpillar_base_icon_mask,
      icon_size = 64,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(tint, mask_1_alpha, true)
    },
  }
end
-- ДОБАВИТЬ МЕЛКОВОДЬЕ ПЛЕСАБЛЕ НО ТОЛЬКО НА ТАЙЛАХ ГЛУБОКОЙ ВОДЫ (колижин маск граунд тайл, определить за мелководьем и просто водой собственный слой для блокировки)

-- [[Fish misc]] --
--data.raw["capsule"]["raw-fish"].place_result = "fish"

data:extend ({
-- [[Caterpillars]] --
	{
		type = "item",
		name = "PLORD_caterpillar_corpse",
		icon = caterpillar_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		place_result = "PLORD_caterpillar_corpse",
		subgroup = "corpses",
		order = "z-a",
		stack_size = 500
	},
	{
		type = "item",
		name = "PLORD_green_caterpillar",
		icon = caterpillar_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_bioeng_animals",
		order = "a-a",
		place_result = "PLORD_green_caterpillar",
		stack_size = 500
	},
	{
		type = "corpse",
		name = "PLORD_caterpillar_corpse",
		localised_name = {"", {"entity-name.PLORD_caterpillar_corpse"}},
		icon = caterpillar_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
		selectable_in_game = true,
		minable = {mining_time = 0.1, result = "PLORD_caterpillar_corpse"},
		collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
		subgroup="corpses",
		order = "z",
		dying_speed = 0.04,
		final_render_layer = "corpse",
		animation = caterpillar_death_anim(small_caterpillar_scale, caterpillar_green_tint),
	},
	{
		type = "unit",
		name = "PLORD_green_caterpillar",
		icon = caterpillar_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		flags = {"placeable-player", "placeable-off-grid", "breaths-air", "not-repairable"},
		minable = {mining_time = 0.1, result = "PLORD_green_caterpillar"},
		max_health = 1,
		order = "a-a-a",
		subgroup = "PLORD_bioeng_animals",
		healing_per_tick = 0.01,
		collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
		selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
		attack_parameters = caterpillar_atk_param(
		{
		  type = "projectile",
		  range = 0.8,
		  min_attack_distance = 0.8,
		  cooldown = 20,
		  cooldown_deviation = 0.15,
		  ammo_type = make_unit_melee_ammo_type(1),
		  damage_modifier = 1,
		  scale = small_bug_scale,
		  tint = caterpillar_green_tint,
		  roarvolume = 0.05,
		  range_mode = "bounding-box-to-bounding-box",
		  animation = caterpillar_atk_anim(small_bug_scale, caterpillar_green_tint)
		}),
		distraction_cooldown = 300,
		pollution_to_join_attack = 1,
		vision_distance = 1,
		movement_speed = 0.035,
		distance_per_frame = 0.05,
		corpse = "PLORD_caterpillar_corpse",
		dying_sound = sounds_caterpillar_death(0.05),
		run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_green_tint)
	},

-- [[Bugs]] --

	{
		type = "item",
		name = "PLORD_bug_corpse",
		icon = bug_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		place_result = "PLORD_bug_corpse",
		subgroup = "corpses",
		order = "z-a",
		stack_size = 500
	},
	{
		type = "item",
		name = "PLORD_green_bug",
		icon = bug_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_bioeng_animals",
		order = "b-a",
		place_result = "PLORD_green_bug",
		stack_size = 500
	},
	{
		type = "corpse",
		name = "PLORD_bug_corpse",
		localised_name = {"", {"entity-name.PLORD_bug_corpse"}},
		icon = bug_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
		selectable_in_game = true,
		minable = {mining_time = 0.1, result = "PLORD_bug_corpse"},
		collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
		subgroup="corpses",
		order = "z",
		dying_speed = 0.04,
		final_render_layer = "corpse",
		animation = bug_death_anim(small_bug_scale, caterpillar_green_tint, bug_green_tint2),
	},
	{
		type = "unit",
		name = "PLORD_green_bug",
		icon = bug_base_maskless_icon,
		icon_size = 64, icon_mipmaps = 4,
		flags = {"placeable-player", "placeable-off-grid", "breaths-air", "not-repairable"},
		minable = {mining_time = 0.1, result = "PLORD_green_bug"},
		max_health = 1,
		order = "a-b-a",
		subgroup = "PLORD_bioeng_animals",
		healing_per_tick = 0.01,
		collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
		selection_box = {{-0.3, -0.3}, {0.3, 0.3}},
		attack_parameters = bug_atk_param(
		{
		  type = "projectile",
		  range = 0.8,
		  min_attack_distance = 0.8,
		  cooldown = 20,
		  cooldown_deviation = 0.15,
		  ammo_type = make_unit_melee_ammo_type(1),
		  damage_modifier = 1,
		  scale = small_bug_scale,
		  tint = caterpillar_green_tint,
		  roarvolume = 0.05,
		  range_mode = "bounding-box-to-bounding-box",
		  animation = bug_atk_anim(small_bug_scale, bug_green_tint, bug_green_tint2)
		}),
		distraction_cooldown = 300,
		pollution_to_join_attack = 1,
		vision_distance = 1,
		movement_speed = 0.1,
		distance_per_frame = 0.05,
		corpse = "PLORD_bug_corpse",
		dying_sound = sounds_caterpillar_death(0.05),
		run_animation = bug_run_anim(small_bug_scale, caterpillar_green_tint, bug_green_tint2)
	},
})

local caterpillar_green_base = data.raw["unit"]["PLORD_green_caterpillar"]
local caterpillar_corpse_base = data.raw["corpse"]["PLORD_caterpillar_corpse"]
local caterpillar_item_base = data.raw["item"]["PLORD_green_caterpillar"]
local bug_green_base = data.raw["unit"]["PLORD_green_bug"]
local bug_corpse_base = data.raw["corpse"]["PLORD_bug_corpse"]
local bug_item_base = data.raw["item"]["PLORD_green_bug"]

local caterpillar_red = copy_prototype(caterpillar_green_base, "PLORD_red_caterpillar")
caterpillar_red.run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_red_tint)
caterpillar_red.attack_parameters.animation = caterpillar_atk_anim(small_caterpillar_scale, caterpillar_red_tint)
local caterpillar_red_item = copy_prototype(caterpillar_item_base, "PLORD_red_caterpillar")
caterpillar_red_item.minable = {mining_time = 0.1, result = "PLORD_red_caterpillar"}

local caterpillar_yellow = copy_prototype(caterpillar_green_base, "PLORD_yellow_caterpillar")
caterpillar_yellow.run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_yellow_tint)
caterpillar_yellow.attack_parameters.animation = caterpillar_atk_anim(small_caterpillar_scale, caterpillar_yellow_tint)
local caterpillar_yellow_item = copy_prototype(caterpillar_item_base, "PLORD_yellow_caterpillar")
caterpillar_yellow_item.minable = {mining_time = 0.1, result = "PLORD_yellow_caterpillar"}

local caterpillar_blue = copy_prototype(caterpillar_green_base, "PLORD_blue_caterpillar")
caterpillar_blue.run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_blue_tint)
caterpillar_blue.attack_parameters.animation = caterpillar_atk_anim(small_caterpillar_scale, caterpillar_blue_tint)
local caterpillar_blue_item = copy_prototype(caterpillar_item_base, "PLORD_blue_caterpillar")
caterpillar_blue_item.minable = {mining_time = 0.1, result = "PLORD_blue_caterpillar"}

local caterpillar_purple = copy_prototype(caterpillar_green_base, "PLORD_purple_caterpillar")
caterpillar_purple.run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_purple_tint)
caterpillar_purple.attack_parameters.animation = caterpillar_atk_anim(small_caterpillar_scale, caterpillar_purple_tint)
local caterpillar_purple_item = copy_prototype(caterpillar_item_base, "PLORD_purple_caterpillar")
caterpillar_purple_item.minable = {mining_time = 0.1, result = "PLORD_purple_caterpillar"}

local caterpillar_orange = copy_prototype(caterpillar_green_base, "PLORD_orange_caterpillar")
caterpillar_orange.run_animation = caterpillar_run_anim(small_caterpillar_scale, caterpillar_orange_tint)
caterpillar_orange.attack_parameters.animation = caterpillar_atk_anim(small_caterpillar_scale, caterpillar_orange_tint)
local caterpillar_orange_item = copy_prototype(caterpillar_item_base, "PLORD_orange_caterpillar")
caterpillar_orange_item.minable = {mining_time = 0.1, result = "PLORD_orange_caterpillar"}


local bug_red = copy_prototype(bug_green_base, "PLORD_red_bug")
bug_red.run_animation = bug_run_anim(small_bug_scale, caterpillar_red_tint, bug_red_tint2)
bug_red.attack_parameters.animation = bug_atk_anim(small_bug_scale, caterpillar_red_tint, bug_red_tint2)
local bug_red_item = copy_prototype(bug_item_base, "PLORD_red_bug")
bug_red_item.minable = {mining_time = 0.1, result = "PLORD_red_bug"}

local bug_yellow = copy_prototype(bug_green_base, "PLORD_yellow_bug")
bug_yellow.run_animation = bug_run_anim(small_bug_scale, caterpillar_yellow_tint, bug_yellow_tint2)
bug_yellow.attack_parameters.animation = bug_atk_anim(small_bug_scale, caterpillar_yellow_tint, bug_yellow_tint2)
local bug_yellow_item = copy_prototype(bug_item_base, "PLORD_yellow_bug")
bug_yellow_item.minable = {mining_time = 0.1, result = "PLORD_yellow_bug"}

local bug_blue = copy_prototype(bug_green_base, "PLORD_blue_bug")
bug_blue.run_animation = bug_run_anim(small_bug_scale, caterpillar_blue_tint, bug_blue_tint2)
bug_blue.attack_parameters.animation = bug_atk_anim(small_bug_scale, caterpillar_blue_tint, bug_blue_tint2)
local bug_blue_item = copy_prototype(bug_item_base, "PLORD_blue_bug")
bug_blue_item.minable = {mining_time = 0.1, result = "PLORD_blue_bug"}

local bug_purple = copy_prototype(bug_green_base, "PLORD_purple_bug")
bug_purple.run_animation = bug_run_anim(small_bug_scale, caterpillar_purple_tint, bug_purple_tint2)
bug_purple.attack_parameters.animation = bug_atk_anim(small_bug_scale, caterpillar_purple_tint, bug_purple_tint2)
local bug_purple_item = copy_prototype(bug_item_base, "PLORD_purple_bug")
bug_purple_item.minable = {mining_time = 0.1, result = "PLORD_purple_bug"}

local bug_orange = copy_prototype(bug_green_base, "PLORD_orange_bug")
bug_orange.run_animation = bug_run_anim(small_bug_scale, caterpillar_orange_tint, bug_orange_tint2)
bug_orange.attack_parameters.animation = bug_atk_anim(small_bug_scale, caterpillar_orange_tint, bug_orange_tint2)
local bug_orange_item = copy_prototype(bug_item_base, "PLORD_orange_bug")
bug_orange_item.minable = {mining_time = 0.1, result = "PLORD_orange_bug"}



data:extend({
caterpillar_red, caterpillar_yellow, caterpillar_blue, caterpillar_purple, caterpillar_orange,
caterpillar_red_item, caterpillar_yellow_item, caterpillar_blue_item, caterpillar_purple_item, caterpillar_orange_item,
bug_red, bug_yellow, bug_blue, bug_purple, bug_orange,
bug_red_item, bug_yellow_item, bug_blue_item, bug_purple_item, bug_orange_item,
})



for e_name, entity in pairs(data.raw["unit"]) do
	if e_name:find("caterpillar") or e_name:find("bug") and e_name:find("PLORD") then 
		if e_name:find("green") then tint = caterpillar_green_tint end
		if e_name:find("red") then tint = caterpillar_red_tint end
		if e_name:find("yellow") then tint = caterpillar_yellow_tint end
		if e_name:find("blue") then tint = caterpillar_blue_tint end
		if e_name:find("purple") then tint = caterpillar_purple_tint end
		if e_name:find("orange") then tint = caterpillar_orange_tint end
		if e_name:find("caterpillar") then
		entity.icons = generate_caterpillar_icons(tint, caterpillar_base_icon, caterpillar_base_icon_mask) end
		if e_name:find("bug") then
		entity.icons = generate_caterpillar_icons(tint, bug_base_icon, bug_base_icon_mask) end
	end
end
for e_name, item in pairs(data.raw["item"]) do
	if e_name:find("caterpillar") or e_name:find("bug") and e_name:find("PLORD") then 
		if e_name:find("green") then tint = caterpillar_green_tint end
		if e_name:find("red") then tint = caterpillar_red_tint end
		if e_name:find("yellow") then tint = caterpillar_yellow_tint end
		if e_name:find("blue") then tint = caterpillar_blue_tint end
		if e_name:find("purple") then tint = caterpillar_purple_tint end
		if e_name:find("orange") then tint = caterpillar_orange_tint end
		if e_name:find("caterpillar") then
		item.icons = generate_caterpillar_icons(tint, caterpillar_base_icon, caterpillar_base_icon_mask) end
		if e_name:find("bug") then
		item.icons = generate_caterpillar_icons(tint, bug_base_icon, bug_base_icon_mask) end
	end
end