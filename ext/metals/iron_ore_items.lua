data.raw["item"]["iron-plate"].subgroup = "PLORD_grp_metals_fpro"
data.raw["item"]["iron-plate"].order = "a-a-b-a"
data.raw["item"]["steel-plate"].subgroup = "PLORD_grp_metals_fpro"
data.raw["item"]["steel-plate"].order = "a-a-b-b"
data.raw["item"]["iron-stick"].subgroup = "PLORD_grp_metals_fpro2"
data.raw["item"]["iron-stick"].order = "a-a-b-c"
data.raw["item"]["iron-gear-wheel"].subgroup = "PLORD_grp_metals_fpro2"
data.raw["item"]["iron-gear-wheel"].order = "a-a-b-a"
data.raw["item"]["empty-barrel"].subgroup = "PLORD_grp_metals_fpro2"
data.raw["item"]["empty-barrel"].order = "a-a-b-d"

data:extend({
	{
		type = "item",
		name = "PLORD_hematite_ore",
		icon = "__PLORD__/graphics/icons/iron/hematite_ore.png", icon_size = 64, icon_mipmaps = 4,
		subgroup = "raw-resource",
		order = "g[hematite]",
		stack_size = 100,
		pictures = {
			{filename="__PLORD__/graphics/icons/iron/hematite_ore.png", size=64, scale=0.25},
			{filename="__PLORD__/graphics/icons/iron/hematite_ore.png", size=64, scale=0.25},
			{filename="__PLORD__/graphics/icons/iron/hematite_ore.png", size=64, scale=0.25},
			{filename="__PLORD__/graphics/icons/iron/hematite_ore.png", size=64, scale=0.25},
		}
	},
	{
		type = "item",
		name = "PLORD_iron_sheet",
		icon = "__PLORD__/graphics/icons/iron/iron_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-b-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/iron/iron_sheet.png", size=128, scale=0.17}},
	},
	{
		type = "item",
		name = "PLORD_iron_cable",
		icon = "__PLORD__/graphics/icons/iron/iron_cable.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-b-c",
		stack_size = 200,
		wire_count = 1
	},
	{
		type = "item",
		name = "PLORD_iron_ingot",
		icon = "__PLORD__/graphics/icons/iron/iron_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-b",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/iron/iron_ingot.png", size=128, scale=0.17}}
	},
})
