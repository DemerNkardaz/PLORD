data:extend({
	{
		type = "technology",
		name = PLORD.pfx .. "charcoal_processing",
		icon = PLORD.asset_tech .. "charcoal_processing.png",
		icon_size = 256, icon_mipmaps = 4,
		effects = {
			{
				type = "unlock-recipe",
				recipe = PLORD.pfx .. "wood_to_charcoal"
			},
		},
		research_trigger =
		{
			type = "craft-item",
			item = PLORD.pfx .. "charcoal",
			count = 1
		}
	}
})