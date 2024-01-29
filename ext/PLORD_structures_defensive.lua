local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")


local copy_prototype = require('__flib__.data-util').copy_prototype
local ammo_turret_base = data.raw["ammo-turret"]["gun-turret"]


local PLORD_lamp_turret = copy_prototype(ammo_turret_base, "PLORD_lamp_turret")
PLORD_lamp_turret.light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "extra-high",
          flags = { "light" },
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6,
        color = {r = 0.92, g = 0.77, b = 0.3}
      }
    }

local PLORD_gl_40mm_turret = copy_prototype(ammo_turret_base, "PLORD_gl_40mm_turret")
PLORD_gl_40mm_turret.minable = {mining_time = 0.5, result = "PLORD_gl_40mm_turret"}
PLORD_gl_40mm_turret.icon = "__PLORD__/graphics/icons/weapons/gl_turret.png"
PLORD_gl_40mm_turret.icon_size = 128
PLORD_gl_40mm_turret.prepare_range = 90
PLORD_gl_40mm_turret.shoot_in_prepare_state = false
PLORD_gl_40mm_turret.turret_base_has_direction = true
PLORD_gl_40mm_turret.attack_parameters =
      {
        type = "projectile",
        ammo_category = "grenade",
        movement_slow_down_factor = 0.8,
        cooldown = 21,
        projectile_creation_distance = 1.39375,
        range = 80,
        min_range = 25,
        turn_range = 1.0 / 4.0,
        projectile_center = {0, 0.0875},
        sound = 
        {
          {
            filename = "__base__/sound/fight/gun-turret-activate-01.ogg",
            volume = 0.55
          },
        },
      }





data:extend({
PLORD_gl_40mm_turret
})
