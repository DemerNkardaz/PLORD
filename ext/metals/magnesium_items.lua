data:extend({
	{
		type = "item",
		name = "PLORD_magnesium_ingot",
		icon = "__PLORD__/graphics/icons/magnesium/magnesium_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-i",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/magnesium/magnesium_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_magnesium_sheet",
		icon = "__PLORD__/graphics/icons/magnesium/magnesium_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-i-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/magnesium/magnesium_sheet.png", size=128, scale=0.17}},
	},
})