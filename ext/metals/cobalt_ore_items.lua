data:extend({
	{
	type = "item",
	name = "PLORD_cobalt_ore",
	icon = "__PLORD__/graphics/icons/cobalt/cobalt_ore.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_metals_raw",
	order = "g[cobalt]",
	stack_size = 100,
	pictures = {
		{filename="__PLORD__/graphics/icons/cobalt/cobalt_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/cobalt/cobalt_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/cobalt/cobalt_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/cobalt/cobalt_ore.png", size=64, scale=0.25},
		   }
	},
	{
		type = "item",
		name = "PLORD_cobalt_ingot",
		icon = "__PLORD__/graphics/icons/cobalt/cobalt_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-g",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {
			{filename="__PLORD__/graphics/icons/cobalt/cobalt_ingot_01.png", size=128, scale=0.17},
			{filename="__PLORD__/graphics/icons/cobalt/cobalt_ingot_02.png", size=128, scale=0.17},
			{filename="__PLORD__/graphics/icons/cobalt/cobalt_ingot_03.png", size=128, scale=0.17},
		}
	},
	{
		type = "item",
		name = "PLORD_cobalt_sheet",
		icon = "__PLORD__/graphics/icons/cobalt/cobalt_sheet_01.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-g-b",
		stack_size = 200,
		pictures = {
			{filename="__PLORD__/graphics/icons/cobalt/cobalt_sheet_01.png", size=128, scale=0.17},
			{filename="__PLORD__/graphics/icons/cobalt/cobalt_sheet_02.png", size=128, scale=0.17},
		}
	},
})

