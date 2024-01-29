local fireutil = require("__base__.prototypes.fire-util")
local copy_prototype = require('__flib__.data-util').copy_prototype
local fire_flame_base = data.raw["fire"]["fire-flame"]


local PLORD_tinderbox_projectile_fire = copy_prototype(fire_flame_base, "PLORD_tinderbox_projectile_fire")
PLORD_tinderbox_projectile_fire.damage_per_tick = {amount = 25 / 25, type = "fire"}
PLORD_tinderbox_projectile_fire.damage_multiplier_increase_per_added_fuel = 0
PLORD_tinderbox_projectile_fire.damage_multiplier_decrease_per_tick = 0
PLORD_tinderbox_projectile_fire.initial_lifetime = 15
PLORD_tinderbox_projectile_fire.lifetime_increase_by = 140
PLORD_tinderbox_projectile_fire.pictures = fireutil.create_tinderboxflame({ blend_mode = "additive", animation_speed = 1, scale = 0.1}),

data:extend({
PLORD_tinderbox_projectile_fire,
{
  type = "projectile",
  name = "PLORD_tinderbox_projectile",
  flags = {"not-on-map"},
  acceleration = 0,
  action =
  {
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-fire",
            entity_name = "PLORD_tinderbox_projectile_fire",
          },
        }
      }
    }
  },
  animation = util.draw_as_glow
  {
    filename = "__PLORD__/graphics/fx/sparks.png",
    priority = "extra-high",
		width = 60,
		height = 118,
    frame_count = 3,
    line_length = 8,
    scale = 0.25,
    shift = { -0.0390625, -0.90625 }
  },
},
{
  type = "projectile",
  name = "PLORD_firstaid_kit_projectile",
  flags = {"not-on-map"},
  acceleration = 0,
  action =
  {
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "stone-furnace"
          },
          {
            type = "play-sound",
            sound = {filename = "__core__/sound/build-small.ogg", volume = 1}
          },
        }
      }
    }
  },
  animation = util.draw_as_glow
  {
    filename = "__PLORD__/graphics/icons/misc/firstaid_kit.png",
    priority = "extra-high",
    width = 64,
    height = 54,
    frame_count = 1,
    line_length = 1,
    scale = 0.25,
    shift = { -0.0390625, -0.90625 }
  },
}



})
