data:extend({
	{
	type = "item",
	name = "PLORD_titan_ore",
	icon = "__PLORD__/graphics/icons/aluminum/aluminum.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_metals_raw",
	order = "a-a-a",
	stack_size = 100,
	pictures = {
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/aluminum/aluminum.png", size=64, scale=0.25},
		   }
	},
	{
		type = "item",
		name = "PLORD_titan_ingot",
		icon = "__PLORD__/graphics/icons/titan/titan_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-d",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/titan/titan_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_titan_plate",
		icon = "__PLORD__/graphics/icons/titan/titan_plate_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro",
		order = "a-a-a",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/titan/titan_plate.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_titan_sheet",
		icon = "__PLORD__/graphics/icons/titan/titan_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-d-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/titan/titan_sheet.png", size=128, scale=0.17}},
	},
	{
		type = "item",
		name = "PLORD_titan_gear_wheel",
		icon = "__PLORD__/graphics/icons/titan/titan_gear.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-a-a",
		stack_size = 100
	},
})