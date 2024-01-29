local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")


local copy_prototype = require('__flib__.data-util').copy_prototype
local stone_furnace_base = data.raw["furnace"]["stone-furnace"]
local steel_furnace_base = data.raw["furnace"]["steel-furnace"]
local electric_furnace_base = data.raw["furnace"]["electric-furnace"]

local boiler_base = data.raw["boiler"]["boiler"]
local boiler_electrical_base = data.raw["boiler"]["PLORD_electrical_boiler"]

local assemb_mach_base = data.raw["assembling-machine"]
local assemb_mach_1_base = assemb_mach_base["assembling-machine-1"]
local assemb_mach_2_base = assemb_mach_base["assembling-machine-2"]
local assemb_mach_2_base = assemb_mach_base["assembling-machine-3"]

local centrifuge_base = assemb_mach_base["centrifuge"]
local chemical_plant_base = assemb_mach_base["chemical-plant"]
local oil_refinery_base = assemb_mach_base["oil-refinery"]

local steam_engine_base = data.raw["generator"]["steam_engine"]
local steam_turbine_base = data.raw["generator"]["steam_turbine"]

local nuclear_reactor_base = data.raw["reactor"]["nuclear-reactor"]

local offshore_pump_base = data.raw["offshore-pump"]["offshore-pump"]

local electripole = data.raw["electric-pole"]
local electripole_small_base = data.raw["electric-pole"]["small-electric-pole"]
local electripole_med_base = data.raw["electric-pole"]["medium-electric-pole"]
local electripole_big_base = data.raw["electric-pole"]["big-electric-pole"]
local electripole_substation_base = data.raw["electric-pole"]["substation"]

local accumulator_base = data.raw["accumulator"]["accumulator"]
local solar_panel_base = data.raw["solar-panel"]["solar-panel"]

local boiler_corpse = data.raw["corpse"]["boiler-remnants"]
local solar_panel_corpse = data.raw["corpse"]["solar-panel-remnants"]


nuclear_reactor_base.light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.0, g = 1.0, b = 0.0}}


offshore_pump_base.pumping_speed = 30
offshore_pump_base.energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 2}
offshore_pump_base.energy_usage = "180kW"
offshore_pump_base.fluid_box.filter = "PLORD_polluted_water"




electripole_small_base.supply_area_distance = 3
electripole_small_base.maximum_wire_distance = 8
electripole_med_base.supply_area_distance = 6
electripole_med_base.maximum_wire_distance = 16
electripole_big_base.supply_area_distance = 3
electripole_big_base.maximum_wire_distance = 40
electripole_substation_base.supply_area_distance = 10
electripole_substation_base.maximum_wire_distance = 20


local PLORD_electripole_small_iron = copy_prototype(electripole_small_base, "PLORD_electripole_small_iron")
PLORD_electripole_small_iron.minable.result = "PLORD_electripole_small_iron"
PLORD_electripole_small_iron.icon = "__PLORD__/graphics/icons/iron-pole-small.png"
PLORD_electripole_small_iron.supply_area_distance = 4
PLORD_electripole_small_iron.maximum_wire_distance = 10
PLORD_electripole_small_iron.pictures.layers[1].filename = "__PLORD__/graphics/entity/iron-pole-small/small-electric-pole.png"
PLORD_electripole_small_iron.pictures.layers[1].hr_version.filename = "__PLORD__/graphics/entity/iron-pole-small/hr-small-electric-pole.png"


local PLORD_electripole_substation_advanced = copy_prototype(electripole_substation_base, "PLORD_electripole_substation_advanced")
PLORD_electripole_substation_advanced.minable.result = "PLORD_electripole_substation_advanced"
PLORD_electripole_substation_advanced.icon = "__PLORD__/graphics/icons/substation-advanced.png"
PLORD_electripole_substation_advanced.icon_size = 32
PLORD_electripole_substation_advanced.icon_mipmaps = 1
PLORD_electripole_substation_advanced.supply_area_distance = 24
PLORD_electripole_substation_advanced.maximum_wire_distance = 48
PLORD_electripole_substation_advanced.collision_box = {{-1, -1}, {1, 1}}
PLORD_electripole_substation_advanced.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
PLORD_electripole_substation_advanced.drawing_box = {{-1, -1.5}, {1, 1}}
PLORD_electripole_substation_advanced.pictures = 
    {
    filename = "__PLORD__/graphics/entity/substation-advanced.png",
    priority = "high",
    width = 132,
    height = 144,
    axially_symmetrical = false,
    direction_count = 4,
    shift = {0.9, -1}
    }

PLORD_electripole_substation_advanced.working_sound =
  {
  sound = {filename = "__PLORD__/sound/substation-advanced.ogg", volume = 0.4, min_speed = 0.9, max_speed = 1.2},
  activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
  deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
  max_sounds_per_type = 2,
  audible_distance_modifier = 0.3,
  fade_in_ticks = 4,
  fade_out_ticks = 20,
  use_doppler_shift = false
  }


local PLORD_electripole_substation_facility = copy_prototype(electripole_substation_base, "PLORD_electripole_substation_facility")
PLORD_electripole_substation_facility.type = "electric-pole"
PLORD_electripole_substation_facility.charge_cooldown = 10
PLORD_electripole_substation_facility.discharge_cooldown = 30
PLORD_electripole_substation_facility.charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}}
PLORD_electripole_substation_facility.discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}}
PLORD_electripole_substation_facility.energy_source =
    {
      type = "electric",
      buffer_capacity = "20MJ",
      usage_priority = "tertiary",
      input_flow_limit = "1MW",
      output_flow_limit = "1MW"
    }
PLORD_electripole_substation_facility.minable.result = "PLORD_electripole_substation_facility"
PLORD_electripole_substation_facility.icon = "__PLORD__/graphics/icons/substation-advanced.png"
PLORD_electripole_substation_facility.icon_size = 32
PLORD_electripole_substation_facility.icon_mipmaps = 1
PLORD_electripole_substation_facility.supply_area_distance = 64
PLORD_electripole_substation_facility.maximum_wire_distance = 64
PLORD_electripole_substation_facility.collision_box = {{-4, -6}, {4, 6}}
PLORD_electripole_substation_facility.selection_box = {{-4, -6.5}, {4, 6.5}}
PLORD_electripole_substation_facility.drawing_box = {{-4, -6}, {4, 6}}
PLORD_electripole_substation_facility.pictures = 
    {
    filename = "__PLORD__/graphics/entity/substation-advanced.png",
    priority = "high",
    width = 132,
    height = 144,
    axially_symmetrical = false,
    direction_count = 4,
    shift = {0.9, -1}
    }

PLORD_electripole_substation_facility.working_sound =
  {
  sound = {filename = "__PLORD__/sound/substation-advanced.ogg", volume = 0.4, min_speed = 0.9, max_speed = 1.2},
  activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
  deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
  max_sounds_per_type = 2,
  audible_distance_modifier = 0.3,
  fade_in_ticks = 4,
  fade_out_ticks = 20,
  use_doppler_shift = false
  }



local solar_panel_graphene_corpse = copy_prototype(solar_panel_corpse, "solar_panel_graphene_remnants")
solar_panel_graphene_corpse.icon = "__PLORD__/graphics/icons/solar_panel_graphere.png"
solar_panel_graphene_corpse.animation = make_rotated_animation_variations_from_sheet (2,
    {
      filename = "__PLORD__/graphics/entity/solar_panel_graphene/remnants/solar-panel-remnants.png",
      line_length = 1,
      width = 146,
      height = 142,
      frame_count = 1,
      variation_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(4, 0),
      hr_version =
      {
        filename = "__PLORD__/graphics/entity/solar_panel_graphene/remnants/hr-solar-panel-remnants.png",
        line_length = 1,
        width = 290,
        height = 282,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(3.5, 0),
        scale = 0.5
      }
    })



solar_panel_base.fast_replaceable_group = "solar-panel"
solar_panel_base.next_upgrade = "PLORD_solar_panel_graphene"

local solar_panel_graphene = copy_prototype(solar_panel_base, "PLORD_solar_panel_graphene")
solar_panel_graphene.icon = "__PLORD__/graphics/icons/solar_panel_graphere.png"
solar_panel_graphene.next_upgrade = nil
solar_panel_graphene.max_health = 270
solar_panel_graphene.corpse = "solar_panel_graphene_remnants"
solar_panel_graphene.picture.layers[1].filename = "__PLORD__/graphics/entity/solar_panel_graphene/solar-panel.png"
solar_panel_graphene.picture.layers[1].hr_version.filename = "__PLORD__/graphics/entity/solar_panel_graphene/hr-solar-panel.png"
solar_panel_graphene.production = "200kW"
solar_panel_graphene.minable = {mining_time = 0.1, result = "PLORD_solar_panel_graphene"}


accumulator_base.charge_light = {intensity = 0.3, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}}
accumulator_base.discharge_light = {intensity = 0.7, size = 10, color = {r = 1.0, g = 1.0, b = 1.0}}

local accumulator_1MW = copy_prototype(accumulator_base, "PLORD_accumulator_1MW")
accumulator_1MW.max_health = 200
accumulator_1MW.energy_source.buffer_capacity = "10MJ"
accumulator_1MW.energy_source.input_flow_limit = "1MW"
accumulator_1MW.energy_source.output_flow_limit = "1MW"



function boiler_electrical_reflection()
  return
  {
    pictures =
    {
      filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-reflection.png",
      priority = "extra-high",
      width = 28,
      height = 32,
      shift = util.by_pixel(5, 30),
      variation_count = 4,
      scale = 5
    },
    rotate = false,
    orientation_to_variation = true
  }
end


local chemical_boiler_remnants = copy_prototype(boiler_corpse, "chemical_boiler_remnants")
chemical_boiler_remnants.icon = "__PLORD__/graphics/icons/boiler-chemical.png"
chemical_boiler_remnants.animation.filename = "__PLORD__/graphics/entity/boiler-chemical/remnants/boiler-remnants.png"
chemical_boiler_remnants.animation.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/remnants/hr-boiler-remnants.png"

local highvolt_boiler_remnants = copy_prototype(boiler_corpse, "highvolt_boiler_remnants")
chemical_boiler_remnants.icon = "__PLORD__/graphics/icons/boiler-electrical-highvolt.png"
chemical_boiler_remnants.animation.filename = "__PLORD__/graphics/entity/boiler-highvolt/remnants/boiler-remnants.png"
chemical_boiler_remnants.animation.hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/remnants/hr-boiler-remnants.png"

boiler_base.module_specification = {module_slots = 2}
boiler_base.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
boiler_base.fast_replaceable_group = "boiler"
boiler_base.next_upgrade = "PLORD_electrical_boiler"
boiler_base.energy_source.burnt_inventory_size = 2 
boiler_base.loot = {
    {item="PLORD_iron_scrap", count_min = 1, count_max = 10, probability = 1},
    {item="stone", count_min = 1, count_max = 5, probability = 0.4},
    }
--[[    {
      type = "burner",
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    }]]--




local PLORD_chemical_boiler = copy_prototype(boiler_base, "PLORD_chemical_boiler")
PLORD_chemical_boiler.type = "assembling-machine"
PLORD_chemical_boiler.max_health = 100
PLORD_chemical_boiler.minable.result = "PLORD_chemical_boiler"
PLORD_chemical_boiler.icon = "__PLORD__/graphics/icons/boiler-chemical.png"
PLORD_chemical_boiler.corpse = "chemical_boiler_remnants"
PLORD_chemical_boiler.flags = {"placeable-neutral","placeable-player", "player-creation"}
PLORD_chemical_boiler.module_specification = {module_slots = 2}
PLORD_chemical_boiler.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
PLORD_chemical_boiler.crafting_speed = 1
PLORD_chemical_boiler.crafting_categories = {"PLORD_chemboiler_craft"}
PLORD_chemical_boiler.energy_source =
	{
		type = "electric",
		input_priority = "secondary",
		usage_priority = "secondary-input",
		emissions_per_minute = 30,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(-38, -47.5),
          south_position = util.by_pixel(38.5, -32),
          east_position = util.by_pixel(20, -70),
          west_position = util.by_pixel(-19, -8.5),
          frequency = 15,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    }
PLORD_chemical_boiler.energy_usage = "320kW"
PLORD_chemical_boiler.loot = {
    {item="PLORD_iron_scrap", count_min = 10, count_max = 30, probability = 1},
    {item="PLORD_copper_scrap", count_min = 5, count_max = 20, probability = 1},
    {item="stone", count_min = 3, count_max = 5, probability = 0.5},
    }
PLORD_chemical_boiler.target_temperature = 125
PLORD_chemical_boiler.output_fluid_box = nil
PLORD_chemical_boiler.fluid_boxes = 
	{
	{
		production_type = "input", pipe_covers = pipecoverspictures(), height = 2, base_area = 10, base_level = -1, off_when_no_fluid_recipe = false,
		pipe_connections = {{type = "input-output", position = {-2, 0.5}}, {type = "input-output", position = {2, 0.5}}}
	},
	{
		production_type = "output", pipe_covers = pipecoverspictures(), height = 2, base_level = 1, off_when_no_fluid_recipe = false,
		pipe_connections = {{type = "output", position = {0, -1.5}}}
	},
	}
PLORD_chemical_boiler.structure = nil
PLORD_chemical_boiler.animation = 
      {
        north =
        {
          layers =
          {
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            }
          },
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
          }
        },
        east =
        {
          layers =
          {
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 0.5
            }
          },
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
          }
        },
        south =
        {
          layers =
          {
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 0.5
            }
          },
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
          }
        },
        west =
        {
          layers =
          {
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            }
          },
          {
            filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version =
            {
              filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
          }
        }
      }


PLORD_chemical_boiler.working_visualisations =
    {
      north =
      {
        filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
        draw_as_glow = true,
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 13,
        animation_speed = 0.5,
        shift = util.by_pixel(0, -8.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
        draw_as_glow = true,
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(-10, -22),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
        draw_as_glow = true,
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 9,
        animation_speed = 0.5,
        shift = util.by_pixel(-1, -26.5),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
        draw_as_glow = true,
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(13, -23),
        hr_version =
        {
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
          draw_as_glow = true,
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 0.5
        }
      }
    }





PLORD_chemical_boiler.patch.east.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-E-patch.png"
PLORD_chemical_boiler.patch.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-E-patch.png"
PLORD_chemical_boiler.fire.north.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-N-fire.png"
PLORD_chemical_boiler.fire.east.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-E-fire.png"
PLORD_chemical_boiler.fire.south.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-S-fire.png"
PLORD_chemical_boiler.fire.west.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-W-fire.png"
PLORD_chemical_boiler.fire.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-N-fire.png"
PLORD_chemical_boiler.fire.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-E-fire.png"
PLORD_chemical_boiler.fire.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-S-fire.png"
PLORD_chemical_boiler.fire.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-W-fire.png"
PLORD_chemical_boiler.fire_glow.north.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-N-light.png"
PLORD_chemical_boiler.fire_glow.east.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-E-light.png"
PLORD_chemical_boiler.fire_glow.south.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-S-light.png"
PLORD_chemical_boiler.fire_glow.west.filename = "__PLORD__/graphics/entity/boiler-chemical/boiler-W-light.png"
PLORD_chemical_boiler.fire_glow.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-N-light.png"
PLORD_chemical_boiler.fire_glow.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-E-light.png"
PLORD_chemical_boiler.fire_glow.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-S-light.png"
PLORD_chemical_boiler.fire_glow.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-chemical/hr-boiler-W-light.png"
PLORD_chemical_boiler.working_sound =
	{
	sound = {filename = "__base__/sound/boiler.ogg", volume = 0.8, min_speed = 0.9, max_speed = 1},
	idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.5, min_speed = 0.5, max_speed = 0.7},
	activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
	deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
	max_sounds_per_type = 5,
	audible_distance_modifier = 0.9,
	fade_in_ticks = 4,
	fade_out_ticks = 20
	}


local PLORD_electrical_boiler = copy_prototype(boiler_base, "PLORD_electrical_boiler")
PLORD_electrical_boiler.max_health = 300
PLORD_electrical_boiler.next_upgrade = "PLORD_electrical_boiler_hvolt"
PLORD_electrical_boiler.minable.result = "PLORD_electrical_boiler"
PLORD_electrical_boiler.fast_replaceable_group = "boiler"
PLORD_electrical_boiler.icon = "__PLORD__/graphics/icons/boiler-electrical.png"
PLORD_electrical_boiler.flags = {"placeable-neutral","placeable-player", "player-creation"}
PLORD_electrical_boiler.module_specification = {module_slots = 4}
PLORD_electrical_boiler.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
PLORD_electrical_boiler.energy_source.type = "electric"
PLORD_electrical_boiler.energy_source.input_priority = "secondary"
PLORD_electrical_boiler.energy_source.usage_priority = "secondary-input"
PLORD_electrical_boiler.energy_source.emissions_per_minute = nil
PLORD_electrical_boiler.energy_source.smoke = boiler_base.energy_source.somke
PLORD_electrical_boiler.energy_source.light_flicker = 
	{
          color = {0.7, 1, 1, 0.6},
          minimum_light_size = 1,
          light_intensity_to_size_coefficient = 2
	}
PLORD_electrical_boiler.energy_consumption = "1200kW"
PLORD_electrical_boiler.loot = {
    {item="PLORD_iron_scrap", count_min = 10, count_max = 100, probability = 1},
    {item="PLORD_copper_scrap", count_min = 8, count_max = 40, probability = 1},
    {item="stone", count_min = 1, count_max = 3, probability = 0.5},
    }
PLORD_electrical_boiler.fire_flicker_enabled = true
PLORD_electrical_boiler.fire_glow_flicker_enabled = true
PLORD_electrical_boiler.fire.north.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-N-fire.png"
PLORD_electrical_boiler.fire.east.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-E-fire.png"
PLORD_electrical_boiler.fire.south.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-S-fire.png"
PLORD_electrical_boiler.fire.west.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-W-fire.png"
PLORD_electrical_boiler.fire.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-N-fire.png"
PLORD_electrical_boiler.fire.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-E-fire.png"
PLORD_electrical_boiler.fire.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-S-fire.png"
PLORD_electrical_boiler.fire.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-W-fire.png"
PLORD_electrical_boiler.fire_glow.north.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-N-light.png"
PLORD_electrical_boiler.fire_glow.east.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-E-light.png"
PLORD_electrical_boiler.fire_glow.south.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-S-light.png"
PLORD_electrical_boiler.fire_glow.west.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-W-light.png"
PLORD_electrical_boiler.fire_glow.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-N-light.png"
PLORD_electrical_boiler.fire_glow.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-E-light.png"
PLORD_electrical_boiler.fire_glow.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-S-light.png"
PLORD_electrical_boiler.fire_glow.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-W-light.png"
PLORD_electrical_boiler.fire_glow.north.blend_mode = "additive-soft"
PLORD_electrical_boiler.fire_glow.south.blend_mode = "additive-soft"
PLORD_electrical_boiler.fire_glow.east.blend_mode = "additive-soft"
PLORD_electrical_boiler.fire_glow.west.blend_mode = "additive-soft"
PLORD_electrical_boiler.water_reflection = boiler_electrical_reflection()
PLORD_electrical_boiler.working_sound =
	{
	sound = {filename = "__PLORD__/sound/electrical-boiler.ogg", volume = 0.72, min_speed = 0.9, max_speed = 1},
	idle_sound = {filename = "__PLORD__/sound/electrical-boiler.ogg", volume = 0.65, min_speed = 0.5, max_speed = 0.7},
	activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
	deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
	max_sounds_per_type = 10,
	audible_distance_modifier = 0.8,
	fade_in_ticks = 4,
	fade_out_ticks = 20
	}






local PLORD_electrical_boiler_hvolt = copy_prototype(boiler_base, "PLORD_electrical_boiler_hvolt")
PLORD_electrical_boiler_hvolt.corpse = "highvolt_boiler_remnants"
PLORD_electrical_boiler_hvolt.max_health = 300
PLORD_electrical_boiler.next_upgrade = "PLORD_nuclear_boiler"
PLORD_electrical_boiler_hvolt.minable.result = "PLORD_electrical_boiler_hvolt"
PLORD_electrical_boiler_hvolt.fast_replaceable_group = "boiler"
PLORD_electrical_boiler_hvolt.icon = "__PLORD__/graphics/icons/boiler-electrical-highvolt.png"
PLORD_electrical_boiler_hvolt.flags = {"placeable-neutral","placeable-player", "player-creation"}
PLORD_electrical_boiler_hvolt.module_specification = {module_slots = 4}
PLORD_electrical_boiler_hvolt.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
PLORD_electrical_boiler_hvolt.energy_source.type = "electric"
PLORD_electrical_boiler_hvolt.energy_source.input_priority = "secondary"
PLORD_electrical_boiler_hvolt.energy_source.usage_priority = "secondary-input"
PLORD_electrical_boiler_hvolt.energy_source.emissions_per_minute = nil
PLORD_electrical_boiler_hvolt.energy_source.smoke = boiler_base.energy_source.somke
PLORD_electrical_boiler_hvolt.energy_source.light_flicker = 
	{
          color = {0.7, 1, 1, 0.6},
          minimum_light_size = 1,
          light_intensity_to_size_coefficient = 2
	}
PLORD_electrical_boiler_hvolt.energy_consumption = "7MW"
PLORD_electrical_boiler_hvolt.loot = {
    {item="PLORD_iron_scrap", count_min = 30, count_max = 200, probability = 1},
    {item="PLORD_copper_scrap", count_min = 20, count_max = 10, probability = 1},
    {item="stone", count_min = 1, count_max = 3, probability = 0.5},
    }

PLORD_electrical_boiler_hvolt.structure.north.layers[1].filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-N-idle.png"
PLORD_electrical_boiler_hvolt.structure.east.layers[1].filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-E-idle.png"
PLORD_electrical_boiler_hvolt.structure.south.layers[1].filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-S-idle.png"
PLORD_electrical_boiler_hvolt.structure.west.layers[1].filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-W-idle.png"




PLORD_electrical_boiler_hvolt.structure.north.layers[1].hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-N-idle.png"
PLORD_electrical_boiler_hvolt.structure.east.layers[1].hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-E-idle.png"
PLORD_electrical_boiler_hvolt.structure.south.layers[1].hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-S-idle.png"
PLORD_electrical_boiler_hvolt.structure.west.layers[1].hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-W-idle.png"
PLORD_electrical_boiler_hvolt.fire_flicker_enabled = true
PLORD_electrical_boiler_hvolt.fire_glow_flicker_enabled = true
PLORD_electrical_boiler_hvolt.fire.north.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-N-fire.png"
PLORD_electrical_boiler_hvolt.fire.east.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-E-fire.png"
PLORD_electrical_boiler_hvolt.fire.south.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-S-fire.png"
PLORD_electrical_boiler_hvolt.fire.west.filename = "__PLORD__/graphics/entity/boiler-electrical/boiler-W-fire.png"
PLORD_electrical_boiler_hvolt.fire.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-N-fire.png"
PLORD_electrical_boiler_hvolt.fire.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-E-fire.png"
PLORD_electrical_boiler_hvolt.fire.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-S-fire.png"
PLORD_electrical_boiler_hvolt.fire.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-electrical/hr-boiler-W-fire.png"
PLORD_electrical_boiler_hvolt.fire_glow.north.filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-N-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.east.filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-E-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.south.filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-S-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.west.filename = "__PLORD__/graphics/entity/boiler-highvolt/boiler-W-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.north.hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-N-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.east.hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-E-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.south.hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-S-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.west.hr_version.filename = "__PLORD__/graphics/entity/boiler-highvolt/hr-boiler-W-light.png"
PLORD_electrical_boiler_hvolt.fire_glow.north.blend_mode = "additive-soft"
PLORD_electrical_boiler_hvolt.fire_glow.south.blend_mode = "additive-soft"
PLORD_electrical_boiler_hvolt.fire_glow.east.blend_mode = "additive-soft"
PLORD_electrical_boiler_hvolt.fire_glow.west.blend_mode = "additive-soft"
PLORD_electrical_boiler_hvolt.water_reflection = boiler_electrical_reflection()
PLORD_electrical_boiler_hvolt.working_sound =
	{
	sound = {filename = "__PLORD__/sound/electrical-boiler-high-voltage.ogg", volume = 0.9, min_speed = 0.9, max_speed = 1},
	idle_sound = {filename = "__PLORD__/sound/electrical-boiler.ogg", volume = 0.8, min_speed = 0.5, max_speed = 0.7},
	activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
	deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
	max_sounds_per_type = 5,
	audible_distance_modifier = 0.9,
	fade_in_ticks = 4,
	fade_out_ticks = 20
	}





local PLORD_nuclear_boiler = copy_prototype(boiler_base, "PLORD_nuclear_boiler")
PLORD_nuclear_boiler.max_health = 500
PLORD_electrical_boiler.next_upgrade = nil
PLORD_nuclear_boiler.minable.result = "PLORD_nuclear_boiler"
PLORD_nuclear_boiler.fast_replaceable_group = "boiler"
PLORD_nuclear_boiler.icon = "__PLORD__/graphics/icons/boiler_nuclear.png"
PLORD_nuclear_boiler.flags = {"placeable-neutral","placeable-player", "player-creation"}
PLORD_nuclear_boiler.module_specification = {module_slots = 4}
PLORD_nuclear_boiler.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
PLORD_nuclear_boiler.energy_consumption = settings.startup["PLORD_enable_craft_nuclear_boiler_powerness"].value .. settings.startup["PLORD_enable_craft_nuclear_boiler_powerness_type"].value
PLORD_nuclear_boiler.energy_source =
    {
      type = "burner",
      fuel_category = "nuclear",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.7,
        maximum_intensity = 0.95
      }
    }
PLORD_nuclear_boiler.fire_flicker_enabled = true
PLORD_nuclear_boiler.fire_glow_flicker_enabled = true
PLORD_nuclear_boiler.fire.north.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-N-fire.png"
PLORD_nuclear_boiler.fire.east.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-E-fire.png"
PLORD_nuclear_boiler.fire.south.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-S-fire.png"
PLORD_nuclear_boiler.fire.west.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-W-fire.png"
PLORD_nuclear_boiler.fire.north.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-N-fire.png"
PLORD_nuclear_boiler.fire.east.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-E-fire.png"
PLORD_nuclear_boiler.fire.south.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-S-fire.png"
PLORD_nuclear_boiler.fire.west.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-W-fire.png"
PLORD_nuclear_boiler.fire_glow.north.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-N-light.png"
PLORD_nuclear_boiler.fire_glow.east.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-E-light.png"
PLORD_nuclear_boiler.fire_glow.south.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-S-light.png"
PLORD_nuclear_boiler.fire_glow.west.filename = "__PLORD__/graphics/entity/boiler_nuclear/boiler-W-light.png"
PLORD_nuclear_boiler.fire_glow.north.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-N-light.png"
PLORD_nuclear_boiler.fire_glow.east.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-E-light.png"
PLORD_nuclear_boiler.fire_glow.south.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-S-light.png"
PLORD_nuclear_boiler.fire_glow.west.hr_version.filename = "__PLORD__/graphics/entity/boiler_nuclear/hr-boiler-W-light.png"
PLORD_nuclear_boiler.fire_glow.north.blend_mode = "additive-soft"
PLORD_nuclear_boiler.fire_glow.south.blend_mode = "additive-soft"
PLORD_nuclear_boiler.fire_glow.east.blend_mode = "additive-soft"
PLORD_nuclear_boiler.fire_glow.west.blend_mode = "additive-soft"
PLORD_nuclear_boiler.water_reflection = boiler_electrical_reflection()
PLORD_nuclear_boiler.working_sound =
  {
  sound = {
        {filename = "__base__/sound/nuclear-reactor-1.ogg", volume = 0.55},
        {filename = "__base__/sound/nuclear-reactor-2.ogg", volume = 0.55}
          },
  idle_sound = {filename = "__PLORD__/sound/electrical-boiler.ogg", volume = 0.65, min_speed = 0.5, max_speed = 0.7},
  activate_sound = {filename = "__PLORD__/sound/electrical-boiler-activate.ogg", volume = 0.7},
  deactivate_sound = {filename = "__PLORD__/sound/pick_01.ogg", volume = 0.5},
  max_sounds_per_type = 3,
  fade_in_ticks = 4,
  fade_out_ticks = 20
  }







data:extend({
chemical_boiler_remnants, highvolt_boiler_remnants,
PLORD_electripole_small_iron, PLORD_electripole_substation_advanced, PLORD_electripole_substation_facility,
accumulator_1MW,
solar_panel_graphene,
solar_panel_graphene_corpse,
PLORD_chemical_boiler,
PLORD_electrical_boiler,
PLORD_electrical_boiler_hvolt,
PLORD_nuclear_boiler
})

data:extend({
  {
    type = "assembling-machine",
    name = "PLORD_coke_furnace",
    icon = "__PLORD__/graphics/icons/coke_furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "PLORD_coke_furnace"},
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__PLORD__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    crafting_categories = {"PLORD_coke_smeltings", "PLORD_ingotsmelting"},
    result_inventory_size = 4,
    energy_usage = "50kW",
    crafting_speed = 2,
    source_inventory_size = 4,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      emissions_per_minute = 2,
      fuel_inventory_size = 1,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 10,
          position = {0, -0.4},
          starting_vertical_speed = 0.05,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = "__PLORD__/graphics/entity/coke_furnace.png",
          priority = "high",
          width = 84,
          height = 66,
          frame_count = 1,
          shift = util.by_pixel(7.5, 0.05),
          scale = 0.55
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          line_length = 8,
          width = 29,
          height = 40,
          frame_count = 48,
          direction_count = 1,
          shift = util.by_pixel(-2.5, 4),
          scale = 0.5,
          hr_version =
          {
            filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
            priority = "high",
            line_length = 8,
            width = 57,
            height = 81,
            frame_count = 48,
            direction_count = 1,
            shift = util.by_pixel(-2.5, 4.75),
            scale = 0.25
          }
        },
        light = {intensity = 1, size = 1}
      },
    },
  },


  {
    type = "burner-generator",
    name = "PLORD_fuel_engine",
    icon = "__PLORD__/graphics/icons/fuel_engine.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.3, result = "PLORD_fuel_engine"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    loot = {
    {item="PLORD_iron_scrap", count_min = 1, count_max = 10, probability = 1},
    {item="PLORD_copper_scrap", count_min = 1, count_max = 5, probability = 1},
    },
    alert_icon_shift = util.by_pixel(3, -34),
    fluid_usage_per_tick = 0.7,
    damaged_trigger_effect = hit_effects.entity(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.7 },
    maximum_temperature = 200,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.77, -1.35}, {1, 1.35}},
    selection_box = {{-1.2, -1.7}, {1.2, 1.7}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0.5, 2} },
        { type = "input-output", position = {0.5, -2} }
      },
      production_type = "input-output",

    },
    max_power_output = "0.05MW",
    energy_consumption = "1MW",
    burner =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 0.07,
      fuel_inventory_size = 1,
      burnt_inventory_size = 2,
      emissions_per_minute = 70,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "black_fuel_smoke",
          north_position = util.by_pixel(-0.9, -0.5),
          east_position = util.by_pixel(-0.6, -1.1),
          frequency = 20,
          starting_vertical_speed = 0.05,
          starting_frame_deviation = 60
        }
      }
    },
    energy_source = {
    type = "electric",
    usage_priority = "secondary-output",
    },
    two_direction_only = true,
    animation = {
      north = 
      {
        layers =
        {
          {
            filename = "__PLORD__/graphics/entity/fuel_engine_vertical.png",
            width = 180,
            height = 222,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(24, 0.031),
            scale = 0.7,
          },
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__PLORD__/graphics/entity/fuel_engine_horizontal.png",
            width = 219,
            height = 150,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(24, -0.06),
            scale = 0.7,
          },
        }
      },
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__PLORD__/graphics/entity/fuel_engine_horizontal.png",
          width = 219,
          height = 150,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(24, -0.06),
          scale = 0.7,
        },
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__PLORD__/graphics/entity/fuel_engine_vertical.png",
          width = 180,
          height = 222,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(24, 0.031),
          scale = 0.7,
        },
      }
    },
    working_sound =
    {
      sound = {filename = "__PLORD__/sound/steam-engine-90bpm.ogg", volume = 0.7},
      sound = {filename = "__base__/sound/train-engine.ogg", volume = 0.5},
      --sound = {filename = "__base__/sound/electric-furnace.ogg", volume = 0.6},
      match_speed_to_activity = true,
      audible_distance_modifier = 0.4,
      max_sounds_per_type = 3,
      fade_in_ticks = 6,
      fade_out_ticks = 60
    },
    smoke =
    {
      {
        name = "black_fuel_smoke",
        north_position = {-0.9, -0.5},
        east_position = {-0.6, -1.1},
        frequency = 20 / 32,
        starting_vertical_speed = 0.05,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },


})

data:extend({
  {
  type = "offshore-pump",
  name = "PLORD_burner_offshore_pump",
  icon = "__PLORD__/graphics/icons/offshore-pump-burner.png",
  icon_size = 64, icon_mipmaps = 4,
  flags = {"placeable-neutral", "player-creation", "filter-directions"},
  collision_mask = { "object-layer", "train-layer" },
  center_collision_mask = { "water-tile", "object-layer", "player-layer" },
  fluid_box_tile_collision_test = { "ground-tile" },
  adjacent_tile_collision_test = { "water-tile" },
  adjacent_tile_collision_mask = { "ground-tile" }, -- to prevent building on edge of map :(
  adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
  minable = {mining_time = 0.1, result = "PLORD_burner_offshore_pump"},
  max_health = 50,
  corpse = "small-remnants",
  fluid = "water",
  resistances =
  {
    {
    type = "fire",
    percent = 20
    },
    {
    type = "impact",
    percent = 10
    }
  },
  collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
  selection_box = {{-1, -1.49}, {1, 0.49}},
  fluid_box =
  {
    base_area = 1,
    base_level = 1,
    pipe_covers = pipecoverspictures(),
    production_type = "output",
    filter = "water",
    pipe_connections =
    {
      {
      position = {0, 1},
      type = "output"
      }
    }
  },
  energy_source = {
    type = "burner",
    fuel_category = "chemical",
    effectivity = 0.9,
    fuel_inventory_size = 1,
    emissions_per_minute = 1,
    smoke =
    {
      {
      name = "smoke",
      deviation = {0.1, 0.1},
      position = {0.0, -0.9},
      frequency = 4
      }
    }
  },
  energy_usage = "370kW",
  pumping_speed = 2,
  tile_width = 1,
  tile_height = 1,
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/offshore-pump.ogg",
          volume = 0.5
        }
      },
    },
    picture =
    {
      north =
      {
        filename = "__PLORD__/graphics/entity/offshore-pump-burner/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        width = 160,
        height = 102,
  hr_version =
            {
    filename = "__PLORD__/graphics/entity/offshore-pump-burner/hr-offshore-pump.png",
    priority = "high",
    shift = {0.90625, 0.0625},
    width = 338,
    height = 204,
    scale = 0.5
            }
      },
      east =
      {
        filename = "__PLORD__/graphics/entity/offshore-pump-burner/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.0625},
        x = 160,
        width = 160,
        height = 102,
  hr_version =
            {
    filename = "__PLORD__/graphics/entity/offshore-pump-burner/hr-offshore-pump.png",
    priority = "high",
    shift = {0.90625, 0.0625},
    x = 338,
    width = 320,
    height = 204,
    scale = 0.5
            }
      },
      south =
      {
        filename = "__PLORD__/graphics/entity/offshore-pump-burner/offshore-pump.png",
        priority = "high",
        shift = {0.90625, 0.65625},
        x = 320,
        width = 160,
        height = 102,
  hr_version =
            {
    filename = "__PLORD__/graphics/entity/offshore-pump-burner/hr-offshore-pump.png",
    priority = "high",
    shift = {0.90625, 0.65625},
    x = 640,
    width = 338,
    height = 204,
    scale = 0.5
            }
      },
      west =
      {
        filename = "__PLORD__/graphics/entity/offshore-pump-burner/offshore-pump.png",
        priority = "high",
        shift = {1.0, 0.0625},
        x = 480,
        width = 160,
        height = 102,
  hr_version =
            {
    filename = "__PLORD__/graphics/entity/offshore-pump-burner/hr-offshore-pump.png",
    priority = "high",
    shift = {1.0, 0.0625},
    x = 960,
    width = 320,
    height = 204,
    scale = 0.5
            }
      }
    },
    placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
  circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
  circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
  circuit_wire_max_distance = default_circuit_wire_max_distance,
  rotate = false,
  orientation_to_variation = true
  }
})
