require "util"
local sounds = require ("__base__.prototypes.entity.sounds")
local math3d = require "math3d"
local fireutil = require("__base__.prototypes.fire-util")

data:extend({
	{
	  type = "ammo-category",
	  name = "7_62_39_ammo"
	},
	{
	  type = "ammo-category",
	  name = "PLORD_power_battery"
	},
})

local mdp_wp = "__PLORD__/graphics/entity/weapons/"
local function anim_gprj40mm(gl_base, glow, shadow, scale)
	return
	{
	    filename = mdp_wp .. gl_base .. ".png",
	    draw_as_glow = glow or false,
	    draw_as_shadow = shadow or false,
	    width = 64,
	    height = 64,
	    priority = "high",
	    scale = scale or 0.2,
	    hr_version =
	    {
	      filename = mdp_wp .. gl_base .. "_hr.png",
	      draw_as_glow = glow or false,
	      draw_as_shadow = shadow or false,
	      width = 128,
	      height = 128,
	      priority = "high",
	      scale = scale or 0.2 * 0.5,
	    }
	}
end
data:extend({
  {
    type = "sticker",
    name = "PLORD_incendiary_fire_sticker",
    flags = {"not-on-map"},

    animation =
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      blend_mode = "normal",
      animation_speed = 1,
      scale = 0.35,
      tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.18 }, --{ r = 1, g = 1, b = 1, a = 0.35 },
      shift = math3d.vector2.mul({-0.078125, -1.8125}, 0.1),
      draw_as_glow = true
    },

    duration_in_ticks = 30 * 60,
    damage_interval = 10,
    target_movement_modifier = 0.8,
    damage_per_tick = { amount = 3 * 100 / 60, type = "fire" },
    spread_fire_entity = "fire-flame-on-tree",
    fire_spread_cooldown = 10,
    fire_spread_radius = 0.75
  },

  {
    type = "smoke-with-trigger",
    name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    particle_count = 14,
    particle_spread = { 1.6 * 1.05, 1.6 * 0.6 * 1.05 },
    particle_distance_scale_factor = 0.5,
    particle_scale_factor = { 1, 0.707 },
    particle_duration_variation = 60 * 3,
    wave_speed = { 0.5 / 80, 0.5 / 60 },
    wave_distance = { 1, 0.5 },
    spread_duration_variation = 300 - 20,

    render_layer = "object",

    affected_by_wind = true,
    cyclic = true,
    duration = 40 * 20 + 5,
    fade_away_duration = 3 * 60,
    spread_duration = (200 - 20) / 2 ,
    color = {r = 0.014, g = 0.358, b = 0.395, a = 0.322},

    animation = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].animation,
    working_sound = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].working_sound
  },
  {
    type = "smoke-with-trigger",
    name = "PLORD_40mm_grenade_poison_cloud",
	 	localised_name = {"", {"entity-name.poison-cloud"}},
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    particle_count = 16,
    particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
    particle_distance_scale_factor = 0.5,
    particle_scale_factor = { 1, 0.707 },
    wave_speed = { 1/80, 1/60 },
    wave_distance = { 0.3, 0.2 },
    spread_duration_variation = 30,
    particle_duration_variation = 30 * 3,
    render_layer = "object",

    affected_by_wind = true,
    cyclic = true,
    duration = 40 * 20,
    fade_away_duration = 1.5 * 60,
    spread_duration = 10,
    color = {r = 0.239, g = 0.875, b = 0.992, a = 0.690},

    animation = data.raw["smoke-with-trigger"]["poison-cloud"].animation,
    created_effect =
    {
      {
        type = "cluster",
        cluster_count = 15,
        distance = 4,
        distance_deviation = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = false,
              entity_name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
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
        cluster_count = 12,
        distance = 4 * 1.1,
        distance_deviation = 2,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = false,
              entity_name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
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
            radius = 6,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 1, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_cooldown = 30
  },

  {
    type = "sticker",
    name = "PLORD_slowdown_sticker_1",
    flags = {},
    animation = data.raw["sticker"]["slowdown-sticker"].animation,
    duration_in_ticks = 30 * 60,
    target_movement_modifier = 0.15
  },
  {
    type = "sticker",
    name = "PLORD_slowdown_sticker_2",
    animation = data.raw["sticker"]["slowdown-sticker"].animation,
    duration_in_ticks = 15 * 60,
    target_movement_modifier = 0.5
  },
  {
    type = "sticker",
    name = "PLORD_slowdown_sticker_3",
    animation = data.raw["sticker"]["slowdown-sticker"].animation,
    duration_in_ticks = 25 * 60,
    target_movement_modifier = 0.3
  },

  {
    type = "sticker",
    name = "PLORD_slowdown_sticker_acidic",
    animation =
		{
      filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
      priority = "extra-high",
      line_length = 5,
      width = 22,
      height = 24,
      frame_count = 50,
      animation_speed = 0.5,
      tint = {r=0.7, g=1, b=0.1, a = 0.694},
      shift = util.by_pixel (2,-1),
      hr_version =
      {
        filename = "__base__/graphics/entity/slowdown-sticker/hr-slowdown-sticker.png",
        line_length = 5,
        width = 42,
        height = 48,
        frame_count = 50,
        animation_speed = 0.5,
        tint = {r=0.7, g=1, b=0.1, a = 0.694},
        shift = util.by_pixel(2, -0.5),
        scale = 0.5
      }
    },
    duration_in_ticks = 40 * 60,
    target_movement_modifier = 0.75
  },

  {
    type = "explosion",
    name = "PLORD_acidic_explosion",
    localised_name = {"entity-name.big-explosion"},
    icon = "__base__/graphics/item-group/effects.png",
    icon_size = 64,
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = 
    {
      filename = "__PLORD__/graphics/entity/big_explosion_grey.png",
      draw_as_glow = true,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 0.5,
      scale = 1.25,
      tint = {r=0.7, g=0.7, b=0.15}
    },
    --light = {intensity = 1, size = 50, color = {r=0.2, g=1.0, b=0.5}},
    sound = sounds.large_explosion(1.0)
  },
  {
    type = "explosion",
    name = "PLORD_flare_explosion",
    localised_name = {"entity-name.big-explosion"},
    icon = "__base__/graphics/item-group/effects.png",
    icon_size = 64,
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = 
    {
      filename = "__base__/graphics/entity/big-explosion/big-explosion.png",
      draw_as_glow = true,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 0.005,
      scale = 1.25,
      tint = {r=0.0, g=0.0, b=0.0, a = 0.0}
    },
    light = {intensity = 1, size = 100, color = {r=1.0, g=1.0, b=0.9}}
  },

})
data:extend({
  fireutil.add_basic_fire_graphics_and_effects_definitions
	{
	  type = "fire",
	  name = "PLORD_incendary_fire_flame",
	 	localised_name = {"", {"entity-name.fire-flame"}},
	  flags = {"placeable-off-grid", "not-on-map"},
	  damage_per_tick = {amount = 3 / 60, type = "fire"},
	  maximum_damage_multiplier = 6,
	  damage_multiplier_increase_per_added_fuel = 1,
	  damage_multiplier_decrease_per_tick = 0.005,
	
	  spawn_entity = "fire-flame-on-tree",
	
	  spread_delay = 300,
	  spread_delay_deviation = 180,
	  maximum_spread_count = 100,
	
	  emissions_per_second = 0.005,
	
	  initial_lifetime = 500,
	  lifetime_increase_by = 150,
	  lifetime_increase_cooldown = 4,
	  maximum_lifetime = 500 * 2,
	  delay_between_initial_flames = 10,
	}
})


data:extend({
  {
    type = "projectile",
    name = "PLORD_40mm_grenade",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 25, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 75, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "physical"}
            }
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_lighted",
    flags = {"not-on-map"},
    acceleration = 0.005,
    light = {intensity = 0.5, size = 35},
    animation = 
		{
			{
		    layers =
				{anim_gprj40mm("40mm_gl_lighted", glow, shadow, scale), anim_gprj40mm("40mm_gl_lighted_glow", true, shadow, scale)
				}
			}
		},
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 25, type = "explosion"}
            },{
              type = "damage",
              damage = {amount = 75, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },  
  },

  {
    type = "projectile",
    name = "PLORD_40mm_grenade_flare",
    flags = {"not-on-map"},
    acceleration = 0.005,
    light = {intensity = 0.5, size = 35, color = {r=1.0, g=1.0, b=0.9}},
    animation = 
		{
			{
		    layers =
				{anim_gprj40mm("40mm_gl_flare", glow, shadow, scale), anim_gprj40mm("40mm_gl_flare_glow", true, shadow, scale)
				}
			}
		},
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "PLORD_flare_explosion"
            }
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_he",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_he", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 4.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 0.7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 750, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 200, type = "explosion"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 6,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_cluster_grenade_child",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 3},
    animation = anim_gprj40mm("40mm_gl_cluster", glow, shadow, 0.1),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, 0.1),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 0.75
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 100, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_cluster_grenade",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_cluster", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },

          }
        }
      },
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 15, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 10,
        distance = 5,
        distance_deviation = 3,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_cluster_grenade_child",
          direction_deviation = 0.6,
          starting_speed = 0.45,
          starting_speed_deviation = 0.3
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_incendiary_child",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "area",
        radius = 2.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 5, type = "fire"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_incendiary_fire_sticker",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-fire",
              entity_name = "PLORD_incendary_fire_flame",
              show_in_tooltip = true
            }
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_incendiary",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_incendiary", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 25, type = "fire"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "create-sticker",
              sticker = "PLORD_incendiary_fire_sticker",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-fire",
              entity_name = "PLORD_incendary_fire_flame",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 20,
        distance = 10,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 15,
        distance = 7.5,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 20,
        distance = 5,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 10,
        distance = 4,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_poison",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_poison", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              type = "create-smoke",
              show_in_tooltip = true,
              entity_name = "PLORD_40mm_grenade_poison_cloud",
              initial_height = 0
            },
            {
              type = "create-particle",
              particle_name = "poison-capsule-metal-particle",
              repeat_count = 2,
              initial_height = 1,
              initial_vertical_speed = 0.1,
              initial_vertical_speed_deviation = 0.05,
              offset_deviation = {{-0.1, -0.1}, {0.1, 0.1}},
              speed_from_center = 0.05,
              speed_from_center_deviation = 0.01
            },
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "physical"}
            }
          }
        }
      },
      
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_stun",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_stun", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
              entity_name = "slowdown-capsule-explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        force = "enemy",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_1"
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        force = "enemy",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_2"
            }
          }
        }
      },
      {
        type = "area",
        radius = 2.5,
        force = "enemy",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_3"
            }
          }
        }
      }
    },  
  },
  {
    type = "projectile",
    name = "PLORD_40mm_grenade_acidic",
    flags = {"not-on-map"},
    acceleration = 0.005,
    --light = {intensity = 0.8, size = 5},
    animation = anim_gprj40mm("40mm_gl_acidic", glow, shadow, scale),
		shadow = anim_gprj40mm("40mm_gl_shadow", glow, true, scale),
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
						  entity_name = "PLORD_acidic_explosion"
						},
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 25, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 15, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 140, type = "acid"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_acidic"
            },
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 20, type = "acid"}
            },
          }
        }
      }
    },  
  },
})



data:extend({
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_00.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
	          {
	            type = "create-entity",
	            entity_name = "explosion-hit",
	            offsets = {{0, 1}},
	            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
	          },
	          {
	            type = "damage",
	            damage = { amount = 24, type = "physical"}
	          }
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo_extremos",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_01.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
	          {
	            type = "create-entity",
	            entity_name = "explosion-hit",
	            offsets = {{0, 1}},
	            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
	          },
	          {
	            type = "damage",
	            damage = { amount = 40, type = "physical"}
	          }
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo_uranica",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_02.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
	          {
	            type = "create-entity",
	            entity_name = "explosion-hit",
	            offsets = {{0, 1}},
	            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
	          },
	          {
	            type = "damage",
	            damage = { amount = 100, type = "physical"}
	          }
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo_exterminator",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_03.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
				{
				  type = "create-entity",
				  entity_name = "explosion-hit",
				  offsets = {{0, 1}},
				  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
				},
				{
				  type = "create-entity",
				  entity_name = "explosion",
				  offsets = {{0, 1}},
				  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
				},
				{
				  type = "damage",
				  damage = { amount = 40, type = "explosion"}
				},
				{
				  type = "damage",
				  damage = { amount = 25, type = "physical"}
				},
				{
				  type = "nested-result",
				  action =
				  {
				    type = "area",
				    radius = 2.5,
				    action_delivery =
				    {
				      type = "instant",
				      target_effects =
				      {
				        {
				          type = "damage",
				          damage = {amount = 30, type = "explosion"}
				        },
				        {
				          type = "create-entity",
				          entity_name = "explosion"
				        }
				      }
				    }
				  }
				},
				{
				  type = "destroy-decoratives",
				  from_render_layer = "decorative",
				  to_render_layer = "object",
				  include_soft_decoratives = true,
				  include_decals = false,
				  invoke_decorative_trigger = true,
				  decoratives_with_trigger_only = false,
				  radius = 1
				},
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo_thallium",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_04.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
	          {
	            type = "create-entity",
	            entity_name = "explosion-hit",
	            offsets = {{0, 1}},
	            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
	          },
	          {
	            type = "damage",
	            damage = { amount = 50, type = "physical"}
	          },
	          {
	            type = "damage",
	            damage = { amount = 50, type = "poison"}
	          },
	          {
	            type = "damage",
	            damage = { amount = 15, type = "acid"}
	          }
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},
	{
	  type = "ammo",
	  name = "PLORD_as117_ammo_poisoncloud",
	  icon = "__PLORD__/graphics/icons/weapons/AS117_ammo_06.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "7_62_39_ammo",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "explosion-gunshot"
	        },
	        target_effects =
	        {
				{
				  type = "create-entity",
				  entity_name = "explosion-hit",
				  offsets = {{0, 1}},
				  offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
				},
				{
				  type = "damage",
				  damage = { amount = 20, type = "physical"}
				},
				{
				  type = "damage",
				  damage = { amount = 20, type = "poison"}
				},
				{
				  type = "damage",
				  damage = { amount = 15, type = "acid"}
				},
				{
				type = "create-smoke",
				show_in_tooltip = true,
				entity_name = "PLORD_bullet_poison_cloud",
				initial_height = 0
				},
	        }
	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200,
		pictures = 
		{
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/weapons/AS117_ammo_06.png", size=128, scale=0.1},
				  {filename="__PLORD__/graphics/icons/weapons/AS117_ammo_06_glow.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.1,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.5}, flags = {"light"}}
				}
			},
		},
	},


	{
	  type = "ammo",
	  name = "PLORD_laser_power_battery",
	  icon = "__PLORD__/graphics/icons/weapons/laser_battery.png",
	  icon_size = 128, icon_mipmaps = 4,
	  ammo_type =
	  {
	    category = "PLORD_power_battery",
	    action =
	    {
	      type = "direct",
	      action_delivery =
	      {
	        type = "instant",
	        source_effects =
	        {
	          type = "create-explosion",
	          entity_name = "laser-bubble"
	        },
	        target_effects =
	        {
	          {
	            type = "create-entity",
	            entity_name = "explosion-hit",
	            offsets = {{0, 1}},
	            offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
	          },
	          {
	            type = "damage",
	            damage = { amount = 250, type = "laser"}
	          }
	        },

	      }
	    }
	  },
	  magazine_size = 30,
	  subgroup = "ammo",
	  order = "a[basic-clips]-e[uranium-rounds-magazine]",
	  stack_size = 200
	},

	{
		type = "ammo",
		name = "PLORD_40mm_gl",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-a",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_box.png", size=128, scale=0.17}}
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_lighted",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_lighted.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_lighted",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-b",
		stack_size = 50,
		pictures = 
		{
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/weapons/40mm_gl_lighted_box.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/weapons/40mm_gl_lighted_box_glow.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  flags = {"light"}}
				}
			}
		},
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_flare",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_flare.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  range_modifier = 2,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_flare",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-b-b",
		stack_size = 50,
		pictures = 
		{
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/weapons/40mm_gl_flare_box.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/weapons/40mm_gl_flare_box_glow.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  flags = {"light"}}
				}
			}
		},
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_he",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_he.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 1.25,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_he",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-d",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_he_box.png", size=128, scale=0.17}}
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_cluster",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_cluster.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 1.25,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_cluster_grenade",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-c",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_cluster_box.png", size=128, scale=0.17}},
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_incendiary",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_incendiary.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 2.0,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_incendiary",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-e",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_incendiary_box.png", size=128, scale=0.17}}
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_poison",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_poison.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 1.75,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_poison",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-f",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_poison_box.png", size=128, scale=0.17}}
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_stun",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_stun.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 2.0,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_stun",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-g",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_stun_box.png", size=128, scale=0.17}}
	},
	{
		type = "ammo",
		name = "PLORD_40mm_gl_acidic",
		icon = "__PLORD__/graphics/icons/weapons/40mm_gl_acidic.png",
		icon_size = 128, icon_mipmaps = 4,
		ammo_type =
		{
		  category = "grenade",
		  target_type = "position",
		  cooldown_modifier = 1.3,
		  action =
			{
			  {
			    type = "direct",
			    action_delivery =
			    {
			      type = "projectile",
			      projectile = "PLORD_40mm_grenade_acidic",
			      starting_speed = 0.45
			    }
			  },
			  {
			    type = "direct",
			    action_delivery =
			    {
					type = "instant",
					source_effects =
					{
					  type = "create-explosion",
					  entity_name = "explosion-gunshot"
					},
					target_effects =
					{
						{
						  type = "play-sound",
						  sound = sounds.throw_projectile
						},
					}
			    }
			  }
			},
		},
		magazine_size = 16,
		subgroup = "ammo",
		order = "e-a-h",
		stack_size = 50,
		pictures = {{filename="__PLORD__/graphics/icons/weapons/40mm_gl_acidic_box.png", size=128, scale=0.17}}
	},
})

-- poison, stun, acidic (no cloud spreading)



data.raw["gun"]["submachine-gun"].attack_parameters.cooldown = 5,
data:extend({
		{
			type = "gun",
			name = "PLORD_autopistol",
			icon = "__PLORD__/graphics/icons/weapons/autopistol_alt.png",
			icon_size = 128, icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-a[pistol]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 8,
				movement_slow_down_factor = 0.2,
				damage_modifier = 1.2,
				shell_particle =
				{
				  name = "shell-particle",
				  direction_deviation = 0.1,
				  speed = 0.1,
				  speed_deviation = 0.03,
				  center = {0, 0.1},
				  creation_distance = -0.5,
				  starting_frame_speed = 0.4,
				  starting_frame_speed_deviation = 0.1
				},
				projectile_creation_distance = 1.125,
				range = 20,
				sound = 
				{
					{
					  filename = "__PLORD__/sound/autopistol_shot_01.ogg",
					  volume = 0.4
					},
					{
					  filename = "__PLORD__/sound/autopistol_shot_02.ogg",
					  volume = 0.4
					},
					{
					  filename = "__PLORD__/sound/autopistol_shot_03.ogg",
					  volume = 0.4
					},
				},
			},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/autopistol.png", size=128, scale=0.4}},
		},
		{
		  type = "gun",
		  name = "PLORD_wp_as117",
		  icon = "__PLORD__/graphics/icons/weapons/AS117.png",
		  icon_size = 128, icon_mipmaps = 4,
		  subgroup = "gun",
		  order = "a[basic-clips]-c[submachine-gun]",
		  attack_parameters =
		  {
			type = "projectile",
			ammo_category = "7_62_39_ammo",
			cooldown = 6.5,
			movement_slow_down_factor = 0.7,
			shell_particle =
			{
			  name = "shell-particle",
			  direction_deviation = 0.1,
			  speed = 0.2,
			  speed_deviation = 0.03,
			  center = {0, 0.1},
			  creation_distance = -0.5,
			  starting_frame_speed = 0.4,
			  starting_frame_speed_deviation = 0.1
			},
			projectile_creation_distance = 1.125,
			range = 30,
			sound = 
				{
					{
					  filename = "__PLORD__/sound/as117_shot_01.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_02.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_03.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_04.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_05.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_06.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_07.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_08.ogg",
					  volume = 0.15
					},
					{
					  filename = "__PLORD__/sound/as117_shot_09.ogg",
					  volume = 0.15
					},
				},
			},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/AS117.png", size=128, scale=0.3}},
		},
		{
			type = "gun",
			name = "PLORD_wp_las_gun_rigel",
			icon = "__PLORD__/graphics/icons/weapons/las_gun_rigel_alt.png",
			icon_size = 128, icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-c[submachine-gun]",
			attack_parameters =
				{
					type = "projectile",
					ammo_category = "PLORD_power_battery",
					cooldown = 30,
					movement_slow_down_factor = 0.7,
					projectile_creation_distance = 1.125,
					range = 45,

					sound = 
					{
						{
						  filename = "__base__/sound/fight/laser-turret-activate-01.ogg",
						  volume = 0.85
						},
						{
						  filename = "__base__/sound/fight/laser-turret-activate-02.ogg",
						  volume = 0.85
						},
						{
						  filename = "__base__/sound/fight/laser-turret-activate-03.ogg",
						  volume = 0.85
						},
					},
				},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/las_gun_rigel.png", size=128, scale=0.4}},
		},
		{
			type = "gun",
			name = "PLORD_wp_las_scatter_rigel",
			icon = "__PLORD__/graphics/icons/weapons/las_scatter_rigel_alt.png",
			icon_size = 128, icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-c[submachine-gun]",
			attack_parameters =
				{
					type = "projectile",
					ammo_category = "PLORD_power_battery",
					cooldown = 4,
					movement_slow_down_factor = 0.7,
					projectile_creation_distance = 1.125,
					range = 45,
					damage_modifier = 0.1,
					ammo_consumption_modifier = 0.4,
					sound = 
					{
						{
						  filename = "__base__/sound/fight/laser-turret-activate-01.ogg",
						  volume = 0.65
						},
						{
						  filename = "__base__/sound/fight/laser-turret-activate-02.ogg",
						  volume = 0.65
						},
						{
						  filename = "__base__/sound/fight/laser-turret-activate-03.ogg",
						  volume = 0.65
						},
					},
				},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/las_scatter_rigel.png", size=128, scale=0.4}},
		},
		{
			type = "gun",
			name = "PLORD_wp_las_cannon_rigel",
			icon = "__PLORD__/graphics/icons/weapons/las_cannon_rigel_alt.png",
			icon_size = 128, icon_mipmaps = 4,
			subgroup = "gun",
			order = "a[basic-clips]-c[submachine-gun]",
			attack_parameters =
				{
					type = "projectile",
					ammo_category = "PLORD_power_battery",
					cooldown = 70,
					movement_slow_down_factor = 0.7,
					projectile_creation_distance = 1.125,
					range = 75,
					damage_modifier = 10,
					ammo_consumption_modifier = 10,
					sound = 
					{
						{
						  filename = "__base__/sound/fight/flamethrower-turret-activate-02.ogg",
						  volume = 0.85
						},
						{
						  filename = "__base__/sound/fight/flamethrower-turret-deactivate-02.ogg",
						  volume = 0.85
						},
						{
						  filename = "__base__/sound/fight/flamethrower-turret-deactivate-03.ogg",
						  volume = 0.85
						},
					},
				},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/las_cannon_rigel.png", size=128, scale=0.45}},
		},
		{
			type = "gun",
			name = "PLORD_grenade_launcher_prometheus",
			icon = "__PLORD__/graphics/icons/weapons/gl_prometheus_alt.png",
			icon_size = 128, icon_mipmaps = 4,
			subgroup = "gun",
			order = "d[rocket-launcher]",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "grenade",
				movement_slow_down_factor = 0.8,
				cooldown = 21,
				projectile_creation_distance = 0.6,
				range = 45,
				projectile_center = {0.2, 0},
				sound = 
				{
					{
					  filename = "__base__/sound/fight/gun-turret-activate-01.ogg",
					  volume = 0.55
					},
				},
			},
			stack_size = 5,
			pictures = {{filename="__PLORD__/graphics/icons/weapons/gl_prometheus.png", size=128, scale=0.45}},
		},
})