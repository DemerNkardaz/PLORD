data:extend({
	{
		type = "item",
		name = PLORD.pfx .. "solid_resin",
		icon = PLORD.asset_icon .. "resin-ore.png", icon_size = 64, icon_mipmaps = 4,
		subgroup = PLORD.pfx .. "group_resin_raw",
		order = "a-a-a",
		stack_size = 100,
		fuel_category = "chemical",
		fuel_value = "100kJ",
		pictures = {
			{filename = PLORD.asset_icon .. "resin-ore-1.png", size = 64, scale = 0.5},
			{filename = PLORD.asset_icon .. "resin-ore-2.png", size = 64, scale = 0.5},
			{filename = PLORD.asset_icon .. "resin-ore-3.png", size = 64, scale = 0.5},
			{filename = PLORD.asset_icon .. "resin-ore-4.png", size = 64, scale = 0.5},
		},
    weight = 266 * grams
	},
})