data.raw["item"]["copper-plate"].subgroup = "PLORD_grp_metals_fpro"
data.raw["item"]["copper-plate"].order = "a-a-c-a"
data.raw["item"]["copper-cable"].subgroup = "PLORD_grp_metals_fpro2"
data.raw["item"]["copper-cable"].order = "a-a-c-c"

data:extend({
	--[[{
	type = "item",
	name = "PLORD_copper_cuso4",
	icon = "__PLORD__/graphics/icons/resin-ore.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "intermediate-products",
	order = "g[copper-ore]",
	stack_size = 100,
	pictures = {
		{filename="__PLORD__/graphics/icons/resin-ore-1.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-2.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-3.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-4.png", size=64, scale=0.25},
		   }
	}]]--
	{
		type = "item",
		name = "PLORD_copper_ingot",
		icon = "__PLORD__/graphics/icons/copper/copper_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-c",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/copper/copper_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_copper_sheet",
		icon = "__PLORD__/graphics/icons/copper/copper_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-с-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/copper/copper_sheet.png", size=128, scale=0.17}},
	},
})