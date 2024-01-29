data:extend({
	{
	type = "fluid",
	name = "PLORD_biter_blood",
	default_temperature = 17,
	max_temperature = 50,
	heat_capacity = "1.7KJ",
	base_color = {r=0.5, g=0.4, b=0.5},
	flow_color = {r=0.65, g=0.5, b=0.7},
	icon = "__PLORD__/graphics/icons/fluid/biter_blood.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[oil-gasoline]-aa"
	},
	{
	type = "fluid",
	name = "PLORD_biter_blood_luminiscented",
	localised_name = {"", {"fluid-name.PLORD_biter_blood", "[", "util-name.PLORD_luminiscent", "]"}},
	default_temperature = 17,
	max_temperature = 50,
	heat_capacity = "1.7KJ",
	base_color = {r=0.6, g=0.35, b=0.8},
	flow_color = {r=1, g=0.6, b=1},
	icon = "__PLORD__/graphics/icons/fluid/biter_blood_luminiscented.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[oil-gasoline]-aa"
	},
	{
	type = "fluid",
	name = "PLORD_spitter_blood",
	default_temperature = 17,
	max_temperature = 50,
	heat_capacity = "1.7KJ",
	base_color = {r=0.55, g=0.45, b=0.6},
	flow_color = {r=0.65, g=0.55, b=0.6},
	icon = "__PLORD__/graphics/icons/fluid/spitter_blood.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[oil-gasoline]-aa"
	},
	{
	type = "fluid",
	name = "PLORD_spitter_blood_luminiscented",
	localised_name = {"", {"fluid-name.PLORD_spitter_blood", "[", "util-name.PLORD_luminiscent", "]"}},
	default_temperature = 17,
	max_temperature = 50,
	heat_capacity = "1.7KJ",
	base_color = {r=0.4, g=0.15, b=0.85},
	flow_color = {r=0.5, g=0.3, b=0.9},
	icon = "__PLORD__/graphics/icons/fluid/spitter_blood_luminiscented.png",
	icon_size = 64, icon_mipmaps = 4,
	order = "b[fluid]-a[oil-gasoline]-aa"
	},
})
