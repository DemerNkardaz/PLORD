data:extend({
	{
		type = "item",
		name = "PLORD_indium_ingot",
		icon = "__PLORD__/graphics/icons/indium/indium_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "z",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/indium/indium_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_indium_plate",
		icon = "__PLORD__/graphics/icons/indium/indium_plate_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro",
		order = "z",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/indium/indium_plate.png", size=128, scale=0.17}}
	},	
	{
		type = "item",
		name = "PLORD_indium_sheet",
		icon = "__PLORD__/graphics/icons/indium/indium_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "z",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/indium/indium_sheet.png", size=128, scale=0.17}},
	},
})