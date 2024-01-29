local sounds = require ("__base__.prototypes.entity.sounds")

data:extend({
  {
    name = "PLORD_bullet_poison_cloud",
    localised_name = {"", {"entity-name.poison-cloud"}},
    type = "smoke-with-trigger",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    particle_count = 2,
    particle_spread = { 1, 1 },
    particle_distance_scale_factor = 0.2,
    particle_scale_factor = { 1, 0.707 },
    wave_speed = { 1/80, 1/60 },
    wave_distance = { 0.1, 0.05 },
    spread_duration_variation = 10,
    particle_duration_variation = 60 * 3,
    render_layer = "object",

    affected_by_wind = true,
    cyclic = true,
    duration = 30 * 60,
    fade_away_duration = 10 * 15,
    spread_duration = 15,
    color = {r = 0.239, g = 0.875, b = 0.992, a = 0.690}, -- #3ddffdb0,

    animation =
    {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = {-0.53125, -0.4375},
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" }
    },

    created_effect =
    {
      {
        type = "cluster",
        cluster_count = 2,
        distance = 1,
        distance_deviation = 2,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = false,
              entity_name = "poison-cloud-visual-dummy",
              initial_height = 0
            },
            {
              type = "play-sound",
              sound = sounds.poison_capsule_explosion(0.3)
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 2,
        distance = 1,
        distance_deviation = 2,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = false,
              entity_name = "poison-cloud-visual-dummy",
              initial_height = 0
            }
          }
        }
      }
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            radius = 5,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 5, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_cooldown = 30
  },


  {
    type = "beam",
    name = "PLORD_lasgun_beam",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 10,
    random_target_offset = true,
    action_triggered_automatically = false,
    head =
    {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-body.png",
      flags = beam_non_light_flags,
      line_length = 8,
      width = 64,
      height = 12,
      frame_count = 8,
      scale = 0.5,
      animation_speed = 2.5,
      blend_mode = laser_beam_blend_mode
    },
    tail =
    {
      filename = "__base__/graphics/entity/laser-turret/hr-laser-end.png",
      flags = beam_non_light_flags,
      width = 110,
      height = 62,
      frame_count = 8,
      shift = util.by_pixel(11.5, 1),
      scale = 0.5,
      animation_speed = 2.5,
      blend_mode = laser_beam_blend_mode
    },
    body =
    {
      {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-body.png",
        flags = beam_non_light_flags,
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 2.5,
        blend_mode = laser_beam_blend_mode
      }
    },

    light_animations =
    {
      head =
      {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-body-light.png",
        line_length = 8,
        width = 64,
        height = 12,
        frame_count = 8,
        scale = 0.5,
        animation_speed = 2.5
      },
      tail =
      {
        filename = "__base__/graphics/entity/laser-turret/hr-laser-end-light.png",
        width = 110,
        height = 62,
        frame_count = 8,
        shift = util.by_pixel(11.5, 1),
        scale = 0.5,
        animation_speed = 2.5
      },
      body =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/hr-laser-body-light.png",
          line_length = 8,
          width = 64,
          height = 12,
          frame_count = 8,
          scale = 0.5,
          animation_speed = 2.5
        }
      }
    },

    ground_light_animations =
    {
      head =
      {
        filename = "__base__/graphics/entity/laser-turret/laser-ground-light-head.png",
        line_length = 1,
        width = 256,
        height = 256,
        repeat_count = 8,
        scale = 0.5,
        shift = util.by_pixel(-32, 0),
        animation_speed = 2.5,
        tint = {0.5, 0.05, 0.05}
      },
      tail =
      {
        filename = "__base__/graphics/entity/laser-turret/laser-ground-light-tail.png",
        line_length = 1,
        width = 256,
        height = 256,
        repeat_count = 8,
        scale = 0.5,
        shift = util.by_pixel(32, 0),
        animation_speed = 2.5,
        tint = {0.5, 0.05, 0.05}
      },
      body =
      {
        filename = "__base__/graphics/entity/laser-turret/laser-ground-light-body.png",
        line_length = 1,
        width = 64,
        height = 256,
        repeat_count = 8,
        scale = 0.5,
        animation_speed = 2.5,
        tint = {0.5, 0.05, 0.05}
      }
    }
  },

})


