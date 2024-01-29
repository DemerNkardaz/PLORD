data:extend({
	{
	type = "item",
	name = "PLORD_gold_ore",
	icon = "__PLORD__/graphics/icons/gold/gold_ore.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_metals_raw",
	order = "a-a-e",
	stack_size = 100,
	pictures = {
		{filename="__PLORD__/graphics/icons/gold/gold_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/gold/gold_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/gold/gold_ore.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/gold/gold_ore.png", size=64, scale=0.25},
		   }
	},
	{
		type = "item",
		name = "PLORD_gold_plate",
		icon = "__PLORD__/graphics/icons/gold/gold_plate.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro",
		order = "a-a-k",
		stack_size = 100
	},
	{
		type = "item",
		name = "PLORD_gold_sheet",
		icon = "__PLORD__/graphics/icons/gold/gold_sheet.png", icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-k-b",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/gold/gold_sheet.png", size=128, scale=0.17}},
	},
	{
		type = "item",
		name = "PLORD_gold_cable",
		icon = "__PLORD__/graphics/icons/gold/gold_cable.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-k-c",
		stack_size = 200,
		wire_count = 1
	},
	{
		type = "item",
		name = "PLORD_gold_ingot",
		icon = "__PLORD__/graphics/icons/gold/gold_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_ingots",
		order = "a-a-k",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/gold/gold_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_aurotitanium_ingot",
		icon = "__PLORD__/graphics/icons/gold/aurotitanium_ingot_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_alloy_ingots",
		order = "a-a-k",
		stack_size = settings.startup["PLORD_res_cstm_stack_ingots"].value,
		pictures = {{filename="__PLORD__/graphics/icons/gold/aurotitanium_ingot.png", size=128, scale=0.17}}
	},
	{
		type = "item",
		name = "PLORD_aurotitanium_plate",
		icon = "__PLORD__/graphics/icons/gold/aurotitanium_plate_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro",
		order = "a-a-k",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/gold/aurotitanium_plate.png", size=128, scale=0.17}}
	},	
	{
		type = "item",
		name = "PLORD_aurotitanium_gear_wheel",
		icon = "__PLORD__/graphics/icons/gold/aurotitanium_gear.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_metals_fpro2",
		order = "a-a-k-a",
		stack_size = 100
	},
})