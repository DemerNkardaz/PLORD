local resource_autoplace = require('resource-autoplace');
local noise = require('noise');

data:extend({
	{
	type = "autoplace-control",
	name = "PLORD_resin_ore",
	localised_name = {"", "[entity=PLORD_resin_ore] ", {"entity-name.PLORD_resin_ore_ground"}},
	richness = true,
	order = "b-z",
	category = "resource"},
	{
	type = "noise-layer",
	name = "PLORD_resin_ore"
	},
	{
	type = "resource",
	name = "PLORD_resin_ore",
	localised_name = {"", "[entity=PLORD_resin_ore] ", {"entity-name.PLORD_resin_ore_ground"}},
	icon = "__PLORD__/graphics/icons/resin-ore.png", icon_size = 64, icon_mipmaps = 4,
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.9, g=0.7, b=0.3},
	minable = {
		hardness = 1,
		mining_particle = "iron-ore-particle",
		mining_time = 1,
		results = {{type="item", name = "PLORD_resin_ore", amount_min=1, amount_max=4}, {type="item", name = "PLORD_gum_ore", amount_min=0, amount_max=1}}
		  },
	collision_box = {{ -0.5, -0.45}, {0.5, 0.45}}, selection_box = {{ -0.7, -0.7}, {0.7, 0.7}},
	autoplace = resource_autoplace.resource_autoplace_settings{
		name = "PLORD_resin_ore",
		base_density = 0.1,
		has_starting_area_placement = true,
		starting_area_size = 10500 * coverage,
		starting_area_amount = 250,
		regular_rq_factor_multiplier = 0.6,
		starting_rq_factor_multiplier = 0.7,
		noise_octaves_difference = -0.8,
		noise_persistence = 0.2,
		sharpness = 1,
		richness_multiplier = 2,
		richness_base = 25,
		peaks = {
			{
			  influence = 0.20,
			  base_density = 2,
			  noise_layer = "PLORD_resin_ore",
			  noise_octaves_difference = -2.3,
			  noise_persistence = 1,
			  starting_area_weight_optimal = 0,
			  starting_area_weight_range = 0,
			  starting_area_weight_max_range = 0,
			},
	    		},
	    	    },
		    {
		control = "PLORD_resin_ore",
		noise_layer = "PLORD_resin_ore",
		sharpness = 1,
		richness_multiplier = 2,
		richness_base = 100,
		size_control_multiplier = 0.05,
		regular_rq_factor_multiplier = 1.0,
		starting_rq_factor_multiplier = 1.1,
		has_starting_area_placement = true,
		peaks = {
			{
			  influence = 0.20,
			  base_density = 2,
			  noise_layer = "PLORD_resin_ore",
			  noise_octaves_difference = -2.3,
			  noise_persistence = 1,
			  starting_area_weight_optimal = 0,
			  starting_area_weight_range = 0,
			  starting_area_weight_max_range = 0,
			},
	    		},
		    },
	stage_counts = {200, 100, 50, 20},
	stages =
		{
		sheet =
		{
			filename = "__PLORD__/graphics/entity/ores/resin-ore.png", priority = "extra-high", size = 64, frame_count = 4, variation_count = 4, scale = 1,
			hr_version = {filename = "__PLORD__/graphics/entity/ores/hr-resin-ore.png", priority = "extra-high", size = 128, frame_count = 4, variation_count = 4, scale = 0.5}
		}
		},
	},
})
