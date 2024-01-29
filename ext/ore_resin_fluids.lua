data:extend({
	{
	type = "fluid",
	name = "PLORD_resin_melted",
	default_temperature = 125,
	max_temperature = 250,
	heat_capacity = "1.2KJ",
	base_color = {r=0.75, g=0.55, b=0.25},
	flow_color = {r=0.7, g=0.5, b=0.2},
	icon = "__PLORD__/graphics/icons/fluid/resin-melted.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[resin-melted]-aa"
	},
	{
	type = "fluid",
	name = "PLORD_resin_melted_hquality",
	default_temperature = 125,
	max_temperature = 210,
	heat_capacity = "1.5KJ",
	base_color = {r=0.9, g=0.8, b=0.25},
	flow_color = {r=0.9, g=0.8, b=0.25},
	icon = "__PLORD__/graphics/icons/fluid/resin-melted-high-quality.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[resin-melted-hq]-ab"
	},
	{
	type = "fluid",
	name = "PLORD_resin_turpentine",
	default_temperature = 25,
	max_temperature = 153,
	heat_capacity = "0.5KJ",
	base_color = {r=0.95, g=0.85, b=0.1},
	flow_color = {r=0.7, g=0.5, b=0.2},
	icon = "__PLORD__/graphics/icons/fluid/turpentine.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[resin-melted-turpentine]-ac"
	},
	{
	type = "fluid",
	name = "PLORD_resin_melted_heavyfr",
	default_temperature = 25,
	max_temperature = 153,
	heat_capacity = "0.5KJ",
	base_color = {r=0.4, g=0.24, b=0.14},
	flow_color = {r=0.4, g=0.24, b=0.14},
	icon = "__PLORD__/graphics/icons/fluid/resin-melted-heavy-fraction.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[resin-melted-heavyfr]-ac"
	},

})
