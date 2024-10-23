data:extend({
	{
		type = "item",
		name = PLORD.pfx .. "charcoal",
		icon = PLORD.asset_icon .. "charcoal.png",
		icon_size = 64, icon_mipmaps = 4,
		fuel_category = "chemical",
		fuel_value = "2MJ",
		subgroup = "raw-resource",
		order = "b[coal]-b",
		stack_size = 50,
		pictures = {
			{filename = PLORD.asset_icon .. "charcoal.png", size = 64, scale = 0.25},
		}
	},
	{
		type = "item",
		name = PLORD.pfx .. "coal_ashenslag",
		icon = PLORD.asset_icon .. "carbonium/coal_ash.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "raw-resource",
		order = "g[resin-ore]-e",
		stack_size = 100,
		pictures = {
			{filename = PLORD.asset_icon .. "carbonium/coal_ash.png", size = 64, scale = 0.25},
		}
	},
	{
		type = "item",
		name = PLORD.pfx .. "coal_ash",
		icon = PLORD.asset_icon .. "carbonium/coal_ash.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "raw-resource",
		order = "g[resin-ore]-e",
		stack_size = 100,
		pictures = {
			{filename = PLORD.asset_icon .. "carbonium/coal_ash.png", size = 64, scale = 0.25},
		}
	},
	{
		type = "item",
		name = PLORD.pfx .. "coal_slag",
		icon = PLORD.asset_icon .. "carbonium/coal_slag.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "raw-resource",
		order = "g[resin-ore]-e",
		stack_size = 100,
		pictures = {
			{filename = PLORD.asset_icon .. "carbonium/coal_slag.png", size = 64, scale = 0.25},
		}
	},
})
