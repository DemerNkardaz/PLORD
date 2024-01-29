local copy_prototype = require('__flib__.data-util').copy_prototype
local item_cats = data.raw["item"]
local belt_types_cats = {
	data.raw["transport-belt"],
	data.raw["underground-belt"],
	data.raw["splitter"]
}
local transport_belt_base = data.raw["transport-belt"]["transport-belt"]
local fast_transport_belt_base = data.raw["transport-belt"]["fast-transport-belt"]
local express_transport_belt_base = data.raw["transport-belt"]["express-transport-belt"]
local underground_belt_base = data.raw["underground-belt"]["underground-belt"]
local fast_underground_belt_base = data.raw["underground-belt"]["fast-underground-belt"]
local express_underground_belt_base = data.raw["underground-belt"]["express-underground-belt"]
local splitter_base = data.raw["splitter"]["splitter"]
local fast_splitter_base = data.raw["splitter"]["fast-splitter"]
local express_splitter_base = data.raw["splitter"]["express-splitter"]
--[[
local transport_belt_base_texture = "__PLORD__/graphics/entity/belt_transport/transport-belt.png"
local transport_belt_base_texture_hr = "__PLORD__/graphics/entity/belt_transport/hr-transport-belt.png"
local transport_belt_base_texture_mask = "__PLORD__/graphics/entity/belt_transport/transport-belt-mask.png"
local transport_belt_base_texture_mask_hr = "__PLORD__/graphics/entity/belt_transport/hr-transport-belt-mask.png"


]]--
local transport_belt_path = "__PLORD__/graphics/entity/belt_transport/"
local transport_belt_base_texture = "transport_belt.png"
local transport_belt_base_texture_mask = "transport_belt_mask.png"
local transport_belt_base_body_texture = "transport_belt_bodycolor.png"
local transport_belt_wooden_texture = "transport_belt_wooden.png"

local icon_base_path = "__PLORD__/graphics/icons/belts/"
local underground_belt_base_icon = icon_base_path .. "underground_belt.png"
local underground_belt_base_icon_mask = icon_base_path .. "underground_belt_mask.png"
local transport_belt_base_icon = icon_base_path .. "transport_belt.png"
local transport_belt_base_icon_mask = icon_base_path .. "transport_belt_mask.png"
local splitter_base_icon = icon_base_path .. "splitter.png"
local splitter_base_icon_mask = icon_base_path .. "splitter_mask.png"

local underground_belt_path = "__PLORD__/graphics/entity/belt_underground/"
local underground_belt_base_texture = "underground_belt_structure.png"
local underground_belt_base_texture_iron_oxide_less = "underground_belt_structure_iron_oxide_less.png"
local underground_belt_base_texture_aurotitan = "underground_belt_structure_aurotitan.png"
local underground_belt_base_texture_chromotitan = "underground_belt_structure_chromotitan.png"
local underground_belt_base_texture_platinum = "underground_belt_structure_platinum.png"
local underground_belt_base_texture_mask = "underground_belt_structure_mask.png"

local splitter_belt_path = "__PLORD__/graphics/entity/belt_splitter/"
local splitter_belt_texture_north = "splitter_north.png"
local splitter_belt_texture_north_mask = "splitter_north_mask.png"
local splitter_belt_texture_east = "splitter_east.png"
local splitter_belt_texture_east_mask = "splitter_east_mask.png"
local splitter_belt_texture_south = "splitter_south.png"
local splitter_belt_texture_south_mask = "splitter_south_mask.png"
local splitter_belt_texture_south_dirts = "splitter_south_dirts.png"
local splitter_belt_texture_west = "splitter_west.png"
local splitter_belt_texture_west_mask = "splitter_west_mask.png"

local splitter_belt_texture_east_patch = "splitter_east_top_patch.png"
local splitter_belt_texture_east_patch_mask = "splitter_east_top_patch_mask.png"
local splitter_belt_texture_west_patch = "splitter_west_top_patch.png"
local splitter_belt_texture_west_patch_mask = "splitter_west_top_patch_mask.png"

local mask_alpha_base = 1
local mask_alpha_nill = 0
local tint_base = {r = 1, g = 1, b = 1}

local function generate_belt_texture(tint, blend, base_texture, base_texture_mask)
	return
	{
	  animation_set =
	  	{
				layers = 
					{
							{
							  filename = transport_belt_path .. base_texture,
							  priority = "extra-high",
							  width = 64,
							  height = 64,
							  frame_count = 16,
							  direction_count = 20,
							  hr_version =
							  {
							    filename = transport_belt_path .. "hr-" .. base_texture,
							    priority = "extra-high",
							    width = 128,
							    height = 128,
							    scale = 0.5,
							    frame_count = 16,
							    direction_count = 20
							  }
							},
							{
							  filename = transport_belt_path .. "dummy_transport_belt_mask.png",
							  priority = "extra-high",
							  width = 64,
							  height = 64,
							  frame_count = 16,
							  direction_count = 20,
								tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
								blend_mode = blend or "normal",
							  hr_version =
							  {
							    filename = transport_belt_path .. "hr-" .. "dummy_transport_belt_mask.png",
							    priority = "extra-high",
							    width = 128,
							    height = 128,
									tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
									blend_mode = blend or "normal",
							    scale = 0.5,
							    frame_count = 16,
							    direction_count = 20
							  }
							},
							{
							  filename = transport_belt_path .. base_texture_mask,
							  priority = "extra-high",
							  width = 64,
							  height = 64,
							  frame_count = 16,
							  direction_count = 20,
								tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
								blend_mode = blend or "normal",
							  hr_version =
							  {
							    filename = transport_belt_path .. "hr-" .. base_texture_mask,
							    priority = "extra-high",
							    width = 128,
							    height = 128,
									tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
									blend_mode = blend or "normal",
							    scale = 0.5,
							    frame_count = 16,
							    direction_count = 20
							  }
							},
					},
			},
	}
end

local function generate_underground_belt_texture(tint, blend, base_texture, base_texture_mask)
	return
	{	
		direction_in =
		{
			sheets = 
			{
				
				{
				  filename = underground_belt_path .. base_texture,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96,
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture,
				    priority = "extra-high",
				    width = 192,
				    height =192,
				    y = 192,
				    scale = 0.5
				  }
				},
				{
				  filename = underground_belt_path .. base_texture_mask,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96,
				  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				  blend_mode = blend or "normal",
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture_mask,
				    priority = "extra-high",
				    width = 192,
				    height =192,
				    y = 192,
				    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				    blend_mode = blend or "normal",
				    scale = 0.5
				  }
				},

				{
				  filename = underground_belt_path .. "dirts.png",
				  blend_mode = "additive",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96,
				  hr_version =
				  {
				    filename = underground_belt_path .. "dirts_hr.png",
				    blend_mode = "additive",
				    priority = "extra-high",
				    width = 192,
				    height =192,
				    y = 192,
				    scale = 0.5
				  }
				},
			}
			
		},
		direction_out =
		{
			sheets = 
			{
				
				{
				  filename = underground_belt_path .. base_texture,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    scale = 0.5
				  }
				},
				{
				  filename = underground_belt_path .. base_texture_mask,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				  blend_mode = blend or "normal",
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture_mask,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				    blend_mode = blend or "normal",
				    scale = 0.5
				  }
				},

				{
				  filename = underground_belt_path .. "dirts.png",
				  blend_mode = "additive",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  hr_version =
				  {
				    filename = underground_belt_path .. "dirts_hr.png",
				    blend_mode = "additive",
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    scale = 0.5
				  }
				},
			}
		},
		direction_in_side_loading =
		{
			sheets = 
			{
				
				{
				  filename = underground_belt_path .. base_texture,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*3,
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*3,
				    scale = 0.5
				  }
				},
				{
				  filename = underground_belt_path .. base_texture_mask,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*3,
				  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				  blend_mode = blend or "normal",
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture_mask,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*3,
				    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				    blend_mode = blend or "normal",
				    scale = 0.5
				  }
				},

				{
				  filename = underground_belt_path .. "dirts.png",
				  blend_mode = "additive",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*3,
				  hr_version =
				  {
				    filename = underground_belt_path .. "dirts_hr.png",
				    blend_mode = "additive",
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*3,
				    scale = 0.5
				  }
				},
			}
		},
		direction_out_side_loading =
		{
			sheets = 
			{
				
				{
				  filename = underground_belt_path .. base_texture,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*2,
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*2,
				    scale = 0.5
				  }
				},
				{
				  filename = underground_belt_path .. base_texture_mask,
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*2,
				  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				  blend_mode = blend or "normal",
				  hr_version =
				  {
				    filename = underground_belt_path .. "hr-" .. base_texture_mask,
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*2,
				    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
				    blend_mode = blend or "normal",
				    scale = 0.5
				  }
				},

				{
				  filename = underground_belt_path .. "dirts.png",
				  blend_mode = "additive",
				  priority = "extra-high",
				  width = 96,
				  height = 96,
				  y = 96*2,
				  hr_version =
				  {
				    filename = underground_belt_path .. "dirts_hr.png",
				    blend_mode = "additive",
				    priority = "extra-high",
				    width = 192,
				    height = 192,
				    y = 192*2,
				    scale = 0.5
				  }
				},
			}
		},
		back_patch =
		{
		  sheet =
		  {
		    filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-back-patch.png",
		    priority = "extra-high",
		    width = 96,
		    height = 96,
		    hr_version =
		    {
		      filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure-back-patch.png",
		      priority = "extra-high",
		      width = 192,
		      height = 192,
		      scale = 0.5
		    }
		  }
		},
		front_patch =
		{
		  sheet =
		  {
		    filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure-front-patch.png",
		    priority = "extra-high",
		    width = 96,
		    height = 96,
		    hr_version =
		    {
		      filename = "__base__/graphics/entity/fast-underground-belt/hr-fast-underground-belt-structure-front-patch.png",
		      priority = "extra-high",
		      width = 192,
		      height = 192,
		      scale = 0.5
		    }
		  }
		}
	}
end

local function  generate_splitter_base_texture(tint, blend, 
					texture_north, texture_north_mask,
					texture_east, texture_east_mask,
					texture_south, texture_south_mask,
					texture_west, texture_west_mask)
	return
    {
      north =
      	{
      		layers = 
      		 {
							{
							  filename = splitter_belt_path .. texture_north,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 82,
							  height = 36,
							  shift = util.by_pixel(6, 0),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_north,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 160,
							    height = 70,
							    shift = util.by_pixel(7, 0),
								  scale = 0.5
							  }
							},
							{
							  filename = splitter_belt_path .. texture_north_mask,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 82,
							  height = 36,
							  shift = util.by_pixel(6, 0),
							  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_north_mask,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 160,
							    height = 70,
							    shift = util.by_pixel(7, 0),
								  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							    scale = 0.5
							  }
							}
						},
				},
      east =
      	{
      		layers = 
      		 {
								{
								  filename = splitter_belt_path .. texture_east,
								  frame_count = 32,
								  line_length = 8,
								  priority = "extra-high",
								  width = 46,
								  height = 44,
								  shift = util.by_pixel(4, 12),
								  hr_version =
								  {
								    filename = splitter_belt_path .. "hr-" .. texture_east,
								    frame_count = 32,
								    line_length = 8,
								    priority = "extra-high",
								    width = 90,
								    height = 84,
								    shift = util.by_pixel(4, 13),
								    scale = 0.5
								  }
								},
								{
								  filename = splitter_belt_path .. texture_east_mask,
								  frame_count = 32,
								  line_length = 8,
								  priority = "extra-high",
								  width = 46,
								  height = 44,
								  shift = util.by_pixel(4, 12),
								  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
								  hr_version =
								  {
								    filename = splitter_belt_path .. "hr-" .. texture_east_mask,
								    frame_count = 32,
								    line_length = 8,
								    priority = "extra-high",
								    width = 90,
								    height = 84,
								    shift = util.by_pixel(4, 13),
								    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
								    scale = 0.5
								  }
								},
						},
				},
      south =
      	{
      		layers = 
      		 {
							{
							  filename = splitter_belt_path .. texture_south,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 82,
							  height = 32,
							  shift = util.by_pixel(4, 0),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_south,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 164,
							    height = 64,
							    shift = util.by_pixel(4, 0),
							    scale = 0.5
							  }
							},
							{
							  filename = splitter_belt_path .. texture_south_mask,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 82,
							  height = 32,
							  shift = util.by_pixel(4, 0),
							  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_south_mask,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 164,
							    height = 64,
							    shift = util.by_pixel(4, 0),
								  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							    scale = 0.5
							  }
							},
							{
							  filename = splitter_belt_path .. splitter_belt_texture_south_dirts,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 82,
							  height = 32,
							  shift = util.by_pixel(4, 0),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. splitter_belt_texture_south_dirts,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 164,
							    height = 64,
							    shift = util.by_pixel(4, 0),
							    scale = 0.5
							  }
							}
						}
				},
      west =
      	{
      		layers = 
      		 {
							{
							  filename = splitter_belt_path .. texture_west,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 44,
							  shift = util.by_pixel(6, 12),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_west,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 94,
							    height = 86,
							    shift = util.by_pixel(5, 12),
								  scale = 0.5
								}
							},
							{
							  filename = splitter_belt_path .. texture_west_mask,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 44,
							  shift = util.by_pixel(6, 12),
							  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_west_mask,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 94,
							    height = 86,
							    shift = util.by_pixel(5, 12),
								  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							    scale = 0.5
								}
							}
						}
     		}
    }

end

local function  generate_splitter_patch_texture(tint, blend, 
					texture_east, texture_east_mask,
					texture_west, texture_west_mask
				)
	return
    {
      north = util.empty_sprite(),
      east =
      { 
      	layers =
       		{
							{
							  filename = splitter_belt_path .. texture_east,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 52,
							  shift = util.by_pixel(4, -20),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_east,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 90,
							    height = 104,
							    shift = util.by_pixel(4, -20),
							    scale = 0.5
							  }
							},
							{
							  filename = splitter_belt_path .. texture_east_mask,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 52,
							  shift = util.by_pixel(4, -20),
							  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_east_mask,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 90,
							    height = 104,
							    shift = util.by_pixel(4, -20),
							    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							    scale = 0.5
							  }
							},
					},
			},
      south = util.empty_sprite(),
      west =
      { 
      	layers =
       		{
							{
							  filename = splitter_belt_path .. texture_west,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 48,
							  shift = util.by_pixel(6, -18),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_west,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 94,
							    height = 96,
							    shift = util.by_pixel(5, -18),
							    scale = 0.5
							  }
							},
							{
							  filename = splitter_belt_path .. texture_west_mask,
							  frame_count = 32,
							  line_length = 8,
							  priority = "extra-high",
							  width = 46,
							  height = 48,
							  shift = util.by_pixel(6, -18),
							  tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							  hr_version =
							  {
							    filename = splitter_belt_path .. "hr-" .. texture_west_mask,
							    frame_count = 32,
							    line_length = 8,
							    priority = "extra-high",
							    width = 94,
							    height = 96,
							    shift = util.by_pixel(5, -18),
							    tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
							    scale = 0.5
							  }
							}
					},
			},
    }
end

local function generate_belt_icon(tint, blend, base_icon, base_icon_mask)
  return
  {
    {
      icon = base_icon,
      icon_size = 64,
      icon_mipmaps = 4
    },
    {
      icon = base_icon_mask,
      icon_size = 64,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(tint or tint_base, mask_alpha_base, true),
      blend_mode = blend or "additive-soft",
    }
  }
end



local transport_belt_grey = copy_prototype(transport_belt_base, "PLORD_transport_belt_grey")
transport_belt_grey.minable = {mining_time = 0.1, result = "PLORD_transport_belt_grey"}
transport_belt_grey.related_underground_belt = "PLORD_underground_belt_grey"
transport_belt_grey.max_health = 75
transport_belt_grey.next_upgrade = "transport-belt"
transport_belt_grey.speed = 0.02083333333

local transport_belt_green = copy_prototype(transport_belt_base, "PLORD_transport_belt_green")
transport_belt_green.minable = {mining_time = 0.1, result = "PLORD_transport_belt_green"}
transport_belt_green.related_underground_belt = "PLORD_underground_belt_green"
transport_belt_green.max_health = 210
transport_belt_green.next_upgrade = "PLORD_transport_belt_orange"
transport_belt_green.speed = 0.14583

local transport_belt_orange = copy_prototype(transport_belt_base, "PLORD_transport_belt_orange")
transport_belt_orange.minable = {mining_time = 0.1, result = "PLORD_transport_belt_orange"}
transport_belt_orange.related_underground_belt = "PLORD_underground_belt_orange"
transport_belt_orange.max_health = 270
transport_belt_orange.next_upgrade = "PLORD_transport_belt_purple"
transport_belt_orange.speed = 0.17708333333

local transport_belt_purple = copy_prototype(transport_belt_base, "PLORD_transport_belt_purple")
transport_belt_purple.minable = {mining_time = 0.1, result = "PLORD_transport_belt_purple"}
transport_belt_purple.related_underground_belt = "PLORD_underground_belt_purple"
transport_belt_purple.max_health = 310
transport_belt_purple.next_upgrade = "PLORD_transport_belt_pink"
transport_belt_purple.speed = 0.20833333333

local transport_belt_pink = copy_prototype(transport_belt_base, "PLORD_transport_belt_pink")
transport_belt_pink.minable = {mining_time = 0.1, result = "PLORD_transport_belt_pink"}
transport_belt_pink.related_underground_belt = "PLORD_underground_belt_pink"
transport_belt_pink.max_health = 400
transport_belt_pink.next_upgrade = "PLORD_transport_belt_black"
transport_belt_pink.speed = 0.240

local transport_belt_black = copy_prototype(transport_belt_base, "PLORD_transport_belt_black")
transport_belt_black.minable = {mining_time = 0.1, result = "PLORD_transport_belt_black"}
transport_belt_black.related_underground_belt = "PLORD_underground_belt_pink"
transport_belt_black.max_health = 750
transport_belt_black.next_upgrade = "PLORD_transport_belt_white"
transport_belt_black.speed = 0.2916

local transport_belt_white = copy_prototype(transport_belt_base, "PLORD_transport_belt_white")
transport_belt_white.minable = {mining_time = 0.1, result = "PLORD_transport_belt_white"}
transport_belt_white.related_underground_belt = "PLORD_underground_belt_white"
transport_belt_white.max_health = 1000
transport_belt_white.next_upgrade = nil
transport_belt_white.speed = 0.4166


local transport_belt_xfast = copy_prototype(transport_belt_base, "PLORD_transport_belt_xfast")
transport_belt_xfast.minable = {mining_time = 0.1, result = "PLORD_transport_belt_xfast"}
transport_belt_xfast.related_underground_belt = "PLORD_underground_belt_white"
transport_belt_xfast.max_health = 1000
transport_belt_xfast.next_upgrade = nil
transport_belt_xfast.speed = 10


local wooden_tints = {r = 0.81, g = 0.27, b = 0.27}
local transport_belt_wooden = copy_prototype(transport_belt_base, "PLORD_transport_belt_wooden")
transport_belt_wooden.minable = {mining_time = 0.1, result = "PLORD_transport_belt_wooden"}
transport_belt_wooden.related_underground_belt = "PLORD_underground_belt_wooden"
transport_belt_wooden.icon = icon_base_path .. "wooden_transport_belt.png"
transport_belt_wooden.belt_animation_set = generate_belt_texture(wooden_tints, blend, transport_belt_wooden_texture, transport_belt_base_texture_mask)
transport_belt_wooden.max_health = 25
transport_belt_wooden.next_upgrade = "PLORD_transport_belt_grey"
transport_belt_wooden.speed = 0.01458


local underground_belt_wooden = copy_prototype(underground_belt_base, "PLORD_underground_belt_wooden")
underground_belt_wooden.minable = {mining_time = 0.1, result = "PLORD_underground_belt_wooden"}
underground_belt_wooden.icon = icon_base_path .. "wooden_underground_belt.png"
underground_belt_wooden.max_health = 25
underground_belt_wooden.next_upgrade = "PLORD_underground_belt_grey"
underground_belt_wooden.speed = 0.01458
underground_belt_wooden.max_distance = 2
underground_belt_wooden.belt_animation_set = generate_belt_texture(wooden_tints, blend, transport_belt_wooden_texture, transport_belt_base_texture_mask)
underground_belt_wooden.structure.direction_in.sheet.filename = underground_belt_path .. "wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_in.sheet.hr_version.filename = underground_belt_path .. "hr-wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_out.sheet.filename = underground_belt_path .. "wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_out.sheet.hr_version.filename = underground_belt_path .. "hr-wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_in_side_loading.sheet.filename = underground_belt_path .. "wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_in_side_loading.sheet.hr_version.filename = underground_belt_path .. "hr-wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_out_side_loading.sheet.filename = underground_belt_path .. "wooden_" .. underground_belt_base_texture
underground_belt_wooden.structure.direction_out_side_loading.sheet.hr_version.filename = underground_belt_path .. "hr-wooden_" .. underground_belt_base_texture

local underground_belt_grey = copy_prototype(underground_belt_base, "PLORD_underground_belt_grey")
underground_belt_grey.minable = {mining_time = 0.1, result = "PLORD_underground_belt_grey"}
underground_belt_grey.max_health = 75
underground_belt_grey.next_upgrade = "underground-belt"
underground_belt_grey.speed = 0.02083333333
underground_belt_grey.max_distance = 5

local underground_belt_green = copy_prototype(underground_belt_base, "PLORD_underground_belt_green")
underground_belt_green.minable = {mining_time = 0.1, result = "PLORD_underground_belt_green"}
underground_belt_green.max_health = 210
underground_belt_green.next_upgrade = "PLORD_underground_belt_orange"
underground_belt_green.speed = 0.14583
underground_belt_green.max_distance = 13

local underground_belt_orange = copy_prototype(underground_belt_base, "PLORD_underground_belt_orange")
underground_belt_orange.minable = {mining_time = 0.1, result = "PLORD_underground_belt_orange"}
underground_belt_orange.max_health = 270
underground_belt_orange.next_upgrade = "PLORD_underground_belt_purple"
underground_belt_orange.speed = 0.17708333333 
underground_belt_orange.max_distance = 15

local underground_belt_purple = copy_prototype(underground_belt_base, "PLORD_underground_belt_purple")
underground_belt_purple.minable = {mining_time = 0.1, result = "PLORD_underground_belt_purple"}
underground_belt_purple.max_health = 310
underground_belt_purple.next_upgrade = "PLORD_underground_belt_pink"
underground_belt_purple.speed = 0.20833333333
underground_belt_purple.max_distance = 17

local underground_belt_pink = copy_prototype(underground_belt_base, "PLORD_underground_belt_pink")
underground_belt_pink.minable = {mining_time = 0.1, result = "PLORD_underground_belt_pink"}
underground_belt_pink.max_health = 400
underground_belt_pink.next_upgrade = "PLORD_underground_belt_black"
underground_belt_pink.speed = 0.240
underground_belt_pink.max_distance = 19

local underground_belt_black = copy_prototype(underground_belt_base, "PLORD_underground_belt_black")
underground_belt_black.minable = {mining_time = 0.1, result = "PLORD_underground_belt_black"}
underground_belt_black.max_health = 750
underground_belt_black.next_upgrade = "PLORD_underground_belt_white"
underground_belt_black.speed = 0.2916
underground_belt_black.max_distance = 21

local underground_belt_white = copy_prototype(underground_belt_base, "PLORD_underground_belt_white")
underground_belt_white.minable = {mining_time = 0.1, result = "PLORD_underground_belt_white"}
underground_belt_white.max_health = 1000
underground_belt_white.next_upgrade = nil
underground_belt_white.speed = 0.4166
underground_belt_white.max_distance = 25


local splitter_belt_grey = copy_prototype(splitter_base, "PLORD_splitter_belt_grey")
splitter_belt_grey.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_grey"}
splitter_belt_grey.max_health = 100
splitter_belt_grey.next_upgrade = "splitter"
splitter_belt_grey.speed = 0.02083333333

local splitter_belt_green = copy_prototype(splitter_base, "PLORD_splitter_belt_green")
splitter_belt_green.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_green"}
splitter_belt_green.max_health = 240
splitter_belt_green.next_upgrade = "PLORD_splitter_belt_orange"
splitter_belt_green.speed = 0.14583

local splitter_belt_orange = copy_prototype(splitter_base, "PLORD_splitter_belt_orange")
splitter_belt_orange.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_orange"}
splitter_belt_orange.max_health = 310
splitter_belt_orange.next_upgrade = "PLORD_splitter_belt_purple"
splitter_belt_orange.speed = 0.17708333333

local splitter_belt_purple = copy_prototype(splitter_base, "PLORD_splitter_belt_purple")
splitter_belt_purple.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_purple"}
splitter_belt_purple.max_health = 350
splitter_belt_purple.next_upgrade = "PLORD_splitter_belt_pink"
splitter_belt_purple.speed = 0.20833333333

local splitter_belt_pink = copy_prototype(splitter_base, "PLORD_splitter_belt_pink")
splitter_belt_pink.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_pink"}
splitter_belt_pink.max_health = 440
splitter_belt_pink.next_upgrade = "PLORD_splitter_belt_black"
splitter_belt_pink.speed = 0.240

local splitter_belt_black = copy_prototype(splitter_base, "PLORD_splitter_belt_black")
splitter_belt_black.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_black"}
splitter_belt_black.max_health = 800
splitter_belt_black.next_upgrade = "PLORD_splitter_belt_white"
splitter_belt_black.speed = 0.2916

local splitter_belt_white = copy_prototype(splitter_base, "PLORD_splitter_belt_white")
splitter_belt_white.minable = {mining_time = 0.1, result = "PLORD_splitter_belt_white"}
splitter_belt_white.max_health = 1100
splitter_belt_white.next_upgrade = nil
splitter_belt_white.speed = 0.4166




underground_belt_base.max_distance = 7
underground_belt_base.localised_name = {"", {"entity-name.PLORD_underground_belt_yellow"}}
fast_underground_belt_base.max_distance = 9
fast_underground_belt_base.localised_name = {"", {"entity-name.PLORD_underground_belt_red"}}
express_underground_belt_base.max_distance = 11
fast_underground_belt_base.localised_name = {"", {"entity-name.PLORD_underground_belt_blue"}}
express_underground_belt_base.next_upgrade = "PLORD_underground_belt_green"
express_transport_belt_base.next_upgrade = "PLORD_transport_belt_green"
express_splitter_base.next_upgrade = "PLORD_splitter_belt_green"


data.raw["item"]["underground-belt"].order = "a-c"
data.raw["item"]["fast-underground-belt"].order = "a-d"
data.raw["item"]["express-underground-belt"].order = "a-e"
data.raw["item"]["underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_yellow"}}
data.raw["item"]["fast-underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_red"}}
data.raw["item"]["express-underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_blue"}}
data.raw["underground-belt"]["underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_yellow"}}
data.raw["underground-belt"]["fast-underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_red"}}
data.raw["underground-belt"]["express-underground-belt"].localised_name = {"", {"entity-name.PLORD_underground_belt_blue"}}


data.raw["item"]["transport-belt"].order = "a-c"
data.raw["item"]["fast-transport-belt"].order = "a-d"
data.raw["item"]["express-transport-belt"].order = "a-e"
data.raw["item"]["transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_yellow"}}
data.raw["item"]["fast-transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_red"}}
data.raw["item"]["express-transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_blue"}}
data.raw["transport-belt"]["transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_yellow"}}
data.raw["transport-belt"]["fast-transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_red"}}
data.raw["transport-belt"]["express-transport-belt"].localised_name = {"", {"entity-name.PLORD_transport_belt_blue"}}

data.raw["item"]["splitter"].order = "a-c"
data.raw["item"]["fast-splitter"].order = "a-d"
data.raw["item"]["express-splitter"].order = "a-e"
data.raw["item"]["splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_yellow"}}
data.raw["item"]["fast-splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_red"}}
data.raw["item"]["express-splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_blue"}}
data.raw["splitter"]["splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_yellow"}}
data.raw["splitter"]["fast-splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_red"}}
data.raw["splitter"]["express-splitter"].localised_name = {"", {"entity-name.PLORD_splitter_belt_blue"}}



data:extend({
	


	splitter_belt_green, splitter_belt_orange, splitter_belt_pink, splitter_belt_purple, splitter_belt_white, splitter_belt_black,
	splitter_belt_black, splitter_belt_grey,
	transport_belt_green, transport_belt_orange, transport_belt_pink, transport_belt_purple, transport_belt_white, transport_belt_black,
	transport_belt_black, transport_belt_grey, transport_belt_wooden,
	underground_belt_green, underground_belt_orange, underground_belt_pink, underground_belt_purple, underground_belt_white, underground_belt_black,
	underground_belt_black, underground_belt_grey, underground_belt_wooden,



  {
    type = "item",
    name = "PLORD_splitter_belt_grey",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-b",
    place_result = "PLORD_splitter_belt_grey",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_green",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-f",
    place_result = "PLORD_splitter_belt_green",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_orange",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-g",
    place_result = "PLORD_splitter_belt_orange",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_purple",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-h",
    place_result = "PLORD_splitter_belt_purple",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_pink",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-i",
    place_result = "PLORD_splitter_belt_pink",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_black",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-j",
    place_result = "PLORD_splitter_belt_black",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_splitter_belt_white",
    icon = splitter_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_splitter_belts",
    order = "a-k",
    place_result = "PLORD_splitter_belt_white",
    stack_size = 50
  },



	{
	  type = "item",
	  name = "PLORD_transport_belt_wooden",
	  icon = icon_base_path .. "wooden_transport_belt.png",
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_transport_belts",
	  order = "a-a",
	  place_result = "PLORD_transport_belt_wooden",
	  stack_size = 100
	},
  {
    type = "item",
    name = "PLORD_transport_belt_grey",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-b",
    place_result = "PLORD_transport_belt_grey",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_green",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belt",
    order = "a-f",
    place_result = "PLORD_transport_belt_green",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_orange",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-g",
    place_result = "PLORD_transport_belt_orange",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_purple",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-h",
    place_result = "PLORD_transport_belt_purple",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_pink",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-i",
    place_result = "PLORD_transport_belt_pink",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_black",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-j",
    place_result = "PLORD_transport_belt_black",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_transport_belt_white",
    icon = transport_belt_base.icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_transport_belts",
    order = "a-k",
    place_result = "PLORD_transport_belt_white",
    stack_size = 100
  },




	{
	  type = "item",
	  name = "PLORD_underground_belt_wooden",
	  icon = icon_base_path .. "wooden_underground_belt.png",
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-a",
	  place_result = "PLORD_underground_belt_wooden",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_grey",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-b",
	  place_result = "PLORD_underground_belt_grey",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_green",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-f",
	  place_result = "PLORD_underground_belt_green",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_orange",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-g",
	  place_result = "PLORD_underground_belt_orange",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_purple",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-h",
	  place_result = "PLORD_underground_belt_purple",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_pink",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-i",
	  place_result = "PLORD_underground_belt_pink",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_black",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-j",
	  place_result = "PLORD_underground_belt_black",
	  stack_size = 50
	},
	{
	  type = "item",
	  name = "PLORD_underground_belt_white",
	  icon = underground_belt_base.icon,
	  icon_size = 64, icon_mipmaps = 4,
	  subgroup = "PLORD_underground_belts",
	  order = "a-k",
	  place_result = "PLORD_underground_belt_white",
	  stack_size = 50
	},
})


local common_belt_tint = {r = 0.95, g = 0.82, b = 0.05}
for e_name, category in pairs(belt_types_cats) do
	for e_name, entity in pairs(category) do 

		if not e_name:find("wooden") then
			if (e_name == "underground-belt") or (e_name == "transport-belt") or (e_name == "splitter") then tint = {r = 1.0, g = 0.8, b = 0.1} end
			if (e_name == "fast-underground-belt") or (e_name == "fast-transport-belt") or (e_name == "fast-splitter") then tint = {r = 0.95, g = 0.25, b = 0.25} end
			if (e_name == "express-underground-belt") or (e_name == "express-transport-belt") or (e_name == "express-splitter") then tint = {r = 0.05, g = 0.68, b = 0.85} end
			if e_name:find("grey") then tint = {r = 0.55, g = 0.55, b = 0.55} end
			if e_name:find("green") then tint = {r = 0.3, g = 0.85, b = 0.35} end
			if e_name:find("orange") then tint = {r = 0.95, g = 0.65, b = 0.15} end
			if e_name:find("pink") then tint = {r = 0.9, g = 0.3, b = 0.65} end
			if e_name:find("purple") then tint = {r = 0.6, g = 0.35, b = 0.9} end
			if e_name:find("black") then tint = {r = 0.25, g = 0.25, b = 0.25} end
			if e_name:find("white") then tint = {r = 0.9, g = 0.9, b = 0.9} end

			entity.belt_animation_set = generate_belt_texture(tint, blend, belt_texture or transport_belt_base_texture, transport_belt_base_texture_mask)
			if e_name:find("transport") then 
				entity.icons = generate_belt_icon(tint, blend, transport_belt_base_icon, transport_belt_base_icon_mask)
			end
			if e_name:find("underground") and not e_name:find("wooden") then 
				if (e_name == "PLORD_underground_belt_green") or (e_name == "PLORD_underground_belt_orange") or (e_name == "PLORD_underground_belt_black") then 
					underground_texture = underground_belt_base_texture_iron_oxide_less
				end
				if (e_name == "PLORD_underground_belt_purple") then underground_texture = underground_belt_base_texture_chromotitan end
				if (e_name == "PLORD_underground_belt_white") then underground_texture = underground_belt_base_texture_platinum end
				if (e_name == "PLORD_underground_belt_pink") then underground_texture = underground_belt_base_texture_aurotitan end
				entity.structure = generate_underground_belt_texture(tint, blend, underground_texture or underground_belt_base_texture, underground_belt_base_texture_mask)
				entity.icons = generate_belt_icon(tint, blend, underground_belt_base_icon, underground_belt_base_icon_mask)
			end
			if e_name:find("splitter") then 
				entity.structure = generate_splitter_base_texture(tint, blend, 
					splitter_belt_texture_north, splitter_belt_texture_north_mask,
					splitter_belt_texture_east, splitter_belt_texture_east_mask,
					splitter_belt_texture_south, splitter_belt_texture_south_mask,
					splitter_belt_texture_west, splitter_belt_texture_west_mask
				)
				entity.structure_patch = generate_splitter_patch_texture(tint, blend, 
					splitter_belt_texture_east_patch, splitter_belt_texture_east_patch_mask,
					splitter_belt_texture_west_patch, splitter_belt_texture_west_patch_mask
				)
				entity.icons = generate_belt_icon(tint, blend, splitter_base_icon, splitter_base_icon_mask)
			end


			if settings.startup["PLORD_glowing_belts"].value then
				entity.belt_animation_set.animation_set.layers[3].draw_as_glow = true
				entity.belt_animation_set.animation_set.layers[3].hr_version.draw_as_glow = true
				if e_name:find("splitter") then
				entity.structure.north.layers[2].draw_as_glow = true
				entity.structure.north.layers[2].hr_version.draw_as_glow = true
				entity.structure.east.layers[2].draw_as_glow = true
				entity.structure.east.layers[2].hr_version.draw_as_glow = true
				entity.structure.south.layers[2].draw_as_glow = true
				entity.structure.south.layers[2].hr_version.draw_as_glow = true
				entity.structure.west.layers[2].draw_as_glow = true
				entity.structure.west.layers[2].hr_version.draw_as_glow = true

				entity.structure_patch.east.layers[2].draw_as_glow = true
				entity.structure_patch.east.layers[2].hr_version.draw_as_glow = true
				entity.structure_patch.west.layers[2].draw_as_glow = true
				entity.structure_patch.west.layers[2].hr_version.draw_as_glow = true
				end
			end
			if settings.startup["PLORD_bodycolor_belts"].value then
				entity.belt_animation_set.animation_set.layers[2].filename = transport_belt_path .. transport_belt_base_body_texture
				entity.belt_animation_set.animation_set.layers[2].hr_version.filename = transport_belt_path .. "hr-" .. transport_belt_base_body_texture
			end
		end

	end
end

for e_name, item in pairs(data.raw["item"]) do
	if not e_name:find("wooden") then
			if e_name:find("underground") or e_name:find("transport") and e_name:find("belt") or e_name:find("splitter") then
				if (e_name == "underground-belt") or (e_name == "transport-belt") or (e_name == "splitter") then tint = {r = 1.0, g = 0.8, b = 0.1} end
				if (e_name == "fast-underground-belt") or (e_name == "fast-transport-belt") or (e_name == "fast-splitter") then tint = {r = 1, g = 0.25, b = 0.25} end
				if (e_name == "express-underground-belt") or (e_name == "express-transport-belt") or (e_name == "express-splitter") then tint = {r = 0.04, g = 0.72, b = 0.88} end
				if e_name:find("green") then tint = {r = 0.3, g = 0.85, b = 0.35} end
				if e_name:find("orange") then tint = {r = 0.95, g = 0.65, b = 0.15} end
				if e_name:find("pink") then tint = {r = 0.9, g = 0.3, b = 0.65} end
				if e_name:find("purple") then tint = {r = 0.6, g = 0.35, b = 0.9} end
				if e_name:find("black") then tint = {r = 0.25, g = 0.25, b = 0.25} end
				if e_name:find("grey") then tint = {r = 0.55, g = 0.55, b = 0.55} end
				if e_name:find("white") then tint = {r = 0.9, g = 0.9, b = 0.9} end
				
		if e_name:find("underground") and e_name:find("belt") then
			item.icons = generate_belt_icon(tint, blend, underground_belt_base_icon, underground_belt_base_icon_mask) item.subgroup = "PLORD_underground_belts"
			elseif e_name:find("transport") and e_name:find("belt") then item.icons = generate_belt_icon(tint, blend, transport_belt_base_icon, transport_belt_base_icon_mask) item.subgroup = "PLORD_transport_belts"
			elseif e_name:find("splitter") then item.icons = generate_belt_icon(tint, blend, splitter_base_icon, splitter_base_icon_mask) item.subgroup = "PLORD_splitter_belts"
		end
			end
	end
end