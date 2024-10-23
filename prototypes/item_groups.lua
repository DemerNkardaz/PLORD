data:extend({
	---- RESIN
	{
		type = "item-group",
		name = PLORD.pfx .. "group_resin",
		order = "b-b",
		icon = PLORD.asset_item_groups .. "resin.png",
		icon_size = 256,
		icon_mipmaps = 2
	},
	{
		type = "item-subgroup",
		name = PLORD.pfx .. "group_resin_raw",
		group = PLORD.pfx .. "group_resin",
		order = "a-a"
	},
	{
		type = "item-subgroup",
		name = PLORD.pfx .. "group_resin_fluid_products",
		group = PLORD.pfx .. "group_resin",
		order = "a-b"
	},
	{
		type = "item-subgroup",
		name = PLORD.pfx .. "group_resin_products",
		group = PLORD.pfx .. "group_resin",
		order = "a-c"
	},
})
