data:extend({
	{
	type = "technology",
	name = "PLORD_resin_harvesting",
	icon_size = 256, icon_mipmaps = 4,
	icon = "__PLORD__/graphics/technology/resin-harvesting.png",
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_ore"
			}
		},
	unit =
	{
		count = 10,
		ingredients = {{"automation-science-pack", 1}},
		time = 5
	},
	order = "a-a-a[resin]-a"
  },
	{
	type = "technology",
	name = "PLORD_resin_melting",
	icon_size = 256, icon_mipmaps = 4,
	icon = "__PLORD__/graphics/technology/resin-melting-processing.png",
	prerequisites = {"PLORD_resin_harvesting", "logistic-science-pack", "steel-processing", "fluid-handling"},
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "PLORD_chemical_boiler"
			},
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_melting_processing"
			},
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_refined"
			},
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_melting_processing_hquality"
			}
		},
	unit =
	{
		count = 100,
		ingredients =
		{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
		},
		time = 10
	},
	order = "a-a-a[resin]-b"
  	},

	{
	type = "technology",
	name = "PLORD_rosin_petroleum",
	icon_size = 256, icon_mipmaps = 4,
	icon = "__PLORD__/graphics/technology/rosin-petroleum-processing.png",
	prerequisites = {"PLORD_resin_melting", "oil-processing", "fluid-handling"},
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "PLORD_rosin_petroleum"
			}
		},
	unit =
	{
		count = 50,
		ingredients =
		{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
		},
		time = 10
	},
	order = "a-a-a[resin]-b"
  	},



	{
	type = "technology",
	name = "PLORD_resin_dust_melting",
	icon_size = 256, icon_mipmaps = 4,
	icon = "__PLORD__/graphics/technology/resin-slag-to-ore.png",
	prerequisites = {"PLORD_resin_melting", "advanced-material-processing"},
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_dust_smelting"
			}
		},
	unit =
	{
		count = 70,
		ingredients =
		{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1}
		},
		time = 5
	},
	order = "a-a-a[resin]-c"
  	},
	{
	type = "technology",
	name = "PLORD_resin_advanced_processing",
	icon_size = 256, icon_mipmaps = 4,
	icon = "__PLORD__/graphics/technology/advanced-resin-processing.png",
	prerequisites = {"PLORD_resin_melting", "chemical-science-pack", "advanced-oil-processing"},
	effects =
		{
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_advanced_processing"
			},
			{
			type = "unlock-recipe",
			recipe = "PLORD_resin_ore_advanced"
			}
		},
	unit =
	{
		count = 150,
		ingredients =
		{
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		},
		time = 5
	},
	order = "a-a-a[resin]-d"
  	},
})