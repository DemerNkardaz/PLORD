data:extend({
	{
		type = "item",
		name = "PLORD_platinum_ingot",
		icon = "__PLORD__/graphics/icons/platinum/platinum_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-l",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/platinum/platinum_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_platinum_sheet",
		icon = "__PLORD__/graphics/icons/platinum/platinum_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-l-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/platinum/platinum_sheet.png", size=128, scale=0.17}},
	},
})