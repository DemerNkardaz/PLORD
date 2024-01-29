--data.raw["fluid"]["sulfuric-acid"].localised_name = {"", {"fluid-name.PLORD_sulfuric_acid"}}
data.raw["fluid"]["sulfuric-acid"].localised_description = {"", {"fluid-description.PLORD_sulfuric_acid"}}

data:extend({
	{
		type = "fluid",
		name = "PLORD_aqua_regia",
		default_temperature = 15,
		max_temperature = 200,
		heat_capacity = "0.1KJ",
		icon = "__PLORD__/graphics/icons/fluid/aqua_regia.png",
		icon_size = 64, icon_mipmaps = 4,
		base_color = {r=0.85, g=0.1, b=0.05},
		flow_color = {r=0.7, g=0.3, b=0},
		order = "a[fluid]-b[steam]",
		gas_temperature = 108,
		auto_barrel = true
	},
	{
		type = "fluid",
		name = "PLORD_hydrocyanic_acid",
		default_temperature = 15,
		max_temperature = 200,
		heat_capacity = "0.1KJ",
		icon = "__PLORD__/graphics/icons/fluid/hydrocyanic_acid.png",
		icon_size = 128, icon_mipmaps = 4,
		base_color = {r=0.2, g=0.2, b=0.8},
		flow_color = {r=0.7, g=0.7, b=0.7, a=0.5},
		order = "a[fluid]-b[steam]",
		gas_temperature = 26.7,
		auto_barrel = true
	},
	{
		type = "fluid",
		name = "PLORD_nitrosyl_chloride",
		default_temperature = 15,
		max_temperature = 27,
		heat_capacity = "0.1KJ",
		icon = "__PLORD__/graphics/icons/fluid/nitrosyl_chloride.png",
		icon_size = 128, icon_mipmaps = 4,
		base_color = {r=0.5, g=0.5, b=0.05},
		flow_color = {r=0.7, g=0.7, b=0.05},
		order = "a[fluid]-b[steam]",
		gas_temperature = -5.55,
		auto_barrel = true
	},
})