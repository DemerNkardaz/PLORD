data:extend({
	{
		type = "recipe",
		name = PLORD.pfx .. "wood_to_charcoal",
		icon = PLORD.asset_icon .. "charcoal.png",
		icon_size = 64, icon_mipmaps = 4,
		enabled = false,
		category = PLORD.pfx .. "wood_processing",
		energy_required = 3.2,
		ingredients = {{type = "item", name = "wood", amount = 1}},
		results = {{type = "item", name = PLORD.pfx .. "charcoal", amount_min = 1, amount_max = 4}}
	},
})