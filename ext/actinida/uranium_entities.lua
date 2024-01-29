local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "burner-generator",
    name = "PLORD_uranium_reactor_generator",
    icon  = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "PLORD_uranium_reactor_generator"},
    max_health = 500,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "250MW",
    max_power_output = "250MW",
    burner =
    {
      type = "burner",
      fuel_category = "PLORD_uranium_t2",
      effectivity = 1,
      fuel_inventory_size = 4,
      burnt_inventory_size = 1,
      light_flicker =
      {
        minimum_light_size = 4,
        light_intensity_to_size_coefficient = 0.25,
        color = {r=0.1, g=1.0, b=0.1},
        minimum_intensity = 0.05,
        maximum_intensity = 0.3
      },
    },
    energy_source = {type = "electric", usage_priority = "secondary-output"},
    collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
    damaged_trigger_effect = hit_effects.entity(),
    always_draw_idle_animation = true, idle_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
          width = 154,
          height = 158,
          shift = util.by_pixel(-6, -6),
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 1,
            shift = util.by_pixel(-5, -7)
          }
        },
        {
          filename = "__PLORD__/graphics/entity/nuclear-reactor/reactor-shadow2.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__PLORD__/graphics/entity/nuclear-reactor/hr-reactor-shadow2.png",
            width = 525,
            height = 323,
            scale = 1,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
      blend_mode = "additive",
      draw_as_glow = true,
      width = 160,
      height = 160,
      shift = { -0.03125, -0.1875 },
      hr_version =
      {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
        blend_mode = "additive",
        draw_as_glow = true,
        width = 320,
        height = 320,
        scale = 1,
        shift = { -0.03125, -0.1875 },
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound =
    {
      activate_sound = {filename = "__PLORD__/sound/uran_reactor_t2_activation.ogg", volume = 0.2},
      deactivate_sound = {filename = "__PLORD__/sound/uran_reactor_t2_deactivation.ogg", volume = 0.25},
      sound =
      {
        {
          filename = "__PLORD__/sound/uran_reactor_t2_working_01.ogg",
          volume = 0.75
        },
        {
          filename = "__PLORD__/sound/uran_reactor_t2_working_02.ogg",
          volume = 0.75
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6, max_sounds_per_type = 5},
      fade_in_ticks = 4,
      fade_out_ticks = 15
    },

    dying_trigger_effect =
    {
      type = "create-explosion",
      entity_name = "atomic-nuke-shockwave",
      max_movement_distance = max_nuke_shockwave_movement_distance,
      max_movement_distance_deviation = max_nuke_shockwave_movement_distance_deviation,
      inherit_movement_distance_from_projectile = true,
      cycle_while_moving = true
    }
  },

})