data:extend({
	{
		type = "item",
		name = "PLORD_uranium_ingot",
		icon = "__PLORD__/graphics/icons/uranium/uranium_ingot_circle_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-u-a",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = 
		{
			{filename="__PLORD__/graphics/icons/uranium/uranium_ingot_circle.png", size=128, scale=0.17, repeat_count = 4},
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_circle.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_circle_glow_01.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.5}, flags = {"light"}}
				}
			},
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_circle.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_circle_glow_02.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.5}, flags = {"light"}}
				}
			},
		},
	},
	{
		type = "item",
		name = "PLORD_uranium_ingot_enriched",
		icon = "__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-u-c",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures =
		{
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_01.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_glow_01.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3}, flags = {"light"}}
				}
			},
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_02.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_glow_02.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3}, flags = {"light"}}
				}
			},
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_03.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_glow_03.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3}, flags = {"light"}}
				}
			},
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_04.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/uranium_ingot_luminiscent_glow_04.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3}, flags = {"light"}}
				}
			},
		},
		light = {minimum_darkness = 0.3, intensity = 0.4, size = 25, color = {r=0.29, g=0.92, b=0.44}}
	},
	{
		type = "item",
		name = "PLORD_uranium_ingot_depleted",
		icon = "__PLORD__/graphics/icons/uranium/uranium_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-u-b",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/uranium/uranium_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_uranium_plate",
		icon = "__PLORD__/graphics/icons/uranium/uranium_plate_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro",
		order = "a-a-i",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/uranium/uranium_plate.png", size=128, scale=0.17}}
	},

	{
		type = "item",
		name = "PLORD_aurotitan_uranium_stick",
		icon = "__PLORD__/graphics/icons/uranium/aurotitan_uranium_stick_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-u-u",
		fuel_category = "PLORD_uranium_t2", fuel_value = "19GJ",
		burnt_result = "used-up-uranium-fuel-cell",
		stack_size = 1,
		pictures = {
			{
		    layers =
				{
				  {filename="__PLORD__/graphics/icons/uranium/aurotitan_uranium_stick.png", size=128, scale=0.17},
				  {filename="__PLORD__/graphics/icons/uranium/aurotitan_uranium_stick_glow.png", blend_mode = "additive", draw_as_light = true, size = 128, scale = 0.17,
				  tint = {r = 0.3, g = 0.3, b = 0.3, a = 0.3}, flags = {"light"}}
				}
			},
		}
	},
	{
		type = "item",
		name = "PLORD_uranium_reactor_generator",
		icon = "__base__/graphics/icons/nuclear-reactor.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "energy",
		order = "f[nuclear-energy]-a[reactor]-b",
		place_result = "PLORD_uranium_reactor_generator",
		stack_size = 10
	},
})

