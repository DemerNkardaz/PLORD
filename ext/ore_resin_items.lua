data:extend({
	{
	type = "item",
	name = "PLORD_resin_ore",
	icon = "__PLORD__/graphics/icons/resin-ore.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_resin_raw",
	order = "a-a-a",
	stack_size = 100,
	fuel_category = "chemical",
	fuel_value = "100KJ",
	pictures = {
		{filename="__PLORD__/graphics/icons/resin-ore-1.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-2.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-3.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/resin-ore-4.png", size=64, scale=0.25},
		   }
	},
	{
	type = "item",
	name = "PLORD_rosin",
	icon = "__PLORD__/graphics/icons/rosin.png", icon_size = 64, icon_mipmaps = 4,
	subgroup = "PLORD_grp_resin_raw",
	order = "a-a-b",
	stack_size = 100,
	fuel_category = "chemical",
	fuel_value = "10KJ",
	pictures = {
		{filename="__PLORD__/graphics/icons/rosin.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/rosin.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/rosin.png", size=64, scale=0.25},
		{filename="__PLORD__/graphics/icons/rosin.png", size=64, scale=0.25},
		   }
	},
	{
		type = "item",
		name = "PLORD_resin_refined",
		icon = "__PLORD__/graphics/icons/refined-resin.png", icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_resin_products",
		order = "a-a-c",
		stack_size = 25,
		fuel_category = "chemical",
		fuel_value = "750KJ",
	},
	{
		type = "item",
		name = "PLORD_resin_dust",
		icon = "__PLORD__/graphics/icons/resin-dust.png", icon_size = 64, icon_mipmaps = 4,
		subgroup = "PLORD_grp_resin_products",
		order = "a-b-c",
		stack_size = 500,
		fuel_category = "chemical",
		fuel_value = "5KJ",
		pictures = {{filename="__PLORD__/graphics/icons/package-resin-dust.png", size=64, scale=0.25},}
	},
	{
		type = "item",
		name = "PLORD_simple_rubber",
		icon = "__PLORD__/graphics/icons/rubber_plates_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_resin_products",
		order = "a-a-a",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/rubber_plates.png", size=128, scale=0.1}}
	},
	{
		type = "item",
		name = "PLORD_hq_rubber",
		icon = "__PLORD__/graphics/icons/rubber_plates_hq_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_resin_products",
		order = "a-a-b",
		stack_size = 100,
		pictures = {{filename="__PLORD__/graphics/icons/rubber_plates_hq.png", size=128, scale=0.1}}
	},
	{
		type = "item",
		name = "PLORD_synthetic_caoutchouc",
		icon = "__PLORD__/graphics/icons/synthetic_caoutchouc.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_grp_resin_products",
		order = "a-a-e",
		stack_size = 200,
		pictures = {{filename="__PLORD__/graphics/icons/synthetic_caoutchouc.png", size=128, scale=0.17}}
	},
})
