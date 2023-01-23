data:extend({
	{
	type = "recipe",
	name = "PLORD_resin_ore",
	normal = {
		enabled = true,
		ingredients = {{"wood", 2}},
		energy_required = 2,
		results = {{type="item", name = "PLORD_resin_ore", amount_min=0, amount_max=5}},
		 },
	expensive = {
		enabled = true,
		ingredients = {{"wood", 4}},
		energy_required = 1,
		results = {{type="item", name = "PLORD_resin_ore", amount_min=0, amount_max=5}},
		    },
	},
	{
	type = "recipe",
	name = "PLORD_resin_ore_advanced",
	localised_name = {"", "[item=wood]", "+", "[fluid=PLORD_oil_gasoline]" , {"recipe-name.PLORD_resin_ore_advanced"}},
	icon = "__PLORD__/graphics/icons/resin-advanced.png", icon_size = 64, icon_mipmaps = 4,
	category = "chemistry",
	subgroup = "fluid-recipes",
	enabled = true,
	energy_required = 4,
	ingredients = {
		{type="item", name="wood", amount=20},
		{type="fluid", name="PLORD_oil_gasoline", amount=10},
	},
	results=
	{
		{type="item", name = "PLORD_resin_ore", amount_min=10, amount_max=30,},
	}
	},
	{
	type = "recipe",
	name = "PLORD_resin_refined",
	localised_name = {"", {"recipe-name.PLORD_resin_refining"}},
	icon = "__PLORD__/graphics/icons/refined-resin.png", icon_size = 64, icon_mipmaps = 4,
	category = "crafting-with-fluid",
	subgroup = "intermediate-product",
	order="b[refining-resin]-c",
	enabled = true,
	energy_required = 2,
	ingredients =
	{
		{type="fluid", name="PLORD_resin_melted", amount=20},
	},
	results=
	{
		{type="item", name = "PLORD_resin_refined", amount=5},
		{type="item", name = "PLORD_resin_dust", amount_min=0, amount_max=10},
		{type="item", name = "PLORD_resin_ore", amount_min=0, amount_max=1}
	}
	},
	{
	type = "recipe",
	name = "PLORD_resin_dust_smelting",
	localised_name = {"", "[item=PLORD_resin_dust]", "→", "[item=PLORD_resin_ore]", {"recipe-name.PLORD_resin_dust_smelting"}},
	localised_description = {"", {"recipe-description.PLORD_resin_dust_smelting"}},
	icon = "__PLORD__/graphics/icons/resin-dust-to-ore.png", icon_size = 64, icon_mipmaps = 4,
	order="b[smelting-resin]-a",
	hide_from_player_crafting = true,
	category = "smelting",
	subgroup = "intermediate-product",
	normal = {
		ingredients = {{"PLORD_resin_dust", 5}},
		energy_required = 1,
		results = {{type="item", name = "PLORD_resin_ore", amount_min=1, amount_max=3}},
		 },
	expensive = {
		ingredients = {{"PLORD_resin_dust", 10}},
		energy_required = 2,
		results = {{type="item", name = "PLORD_resin_ore", amount_min=1, amount_max=3}},
		    },
	},
	{
	type = "recipe",
	name = "PLORD_resin_melting_processing",
	localised_name = {"", "[fluid=PLORD_resin_melted]", {"recipe-name.PLORD_resin_melting_processing"}},
	category = "PLORD_chemboiler_craft",
	enabled = true,
	energy_required = 0.2,
	ingredients =
	{
		{type="item", name="PLORD_resin_ore", amount=1},
	},
	results=
	{
		{type="fluid", name="PLORD_resin_melted", amount=5},
	},
	icon = "__PLORD__/graphics/icons/fluid/resin-melting.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "fluid-recipes",
	order = "a[PLORD_chemboiler_craft]-b[resin-melting]-aa"
	},

	{
	type = "recipe",
	name = "PLORD_resin_melting_processing_hquality",
	localised_name = {"", "[fluid=PLORD_resin_melted_hquality]", {"recipe-name.PLORD_resin_melting_processing_hquality"}},
	category = "PLORD_chemboiler_craft",
	subgroup = "fluid-recipes",
	enabled = true,
	energy_required = 0.2,
	ingredients =
	{
		{type="item", name="PLORD_resin_refined", amount=1},
	},
	results=
	{
		{type="fluid", name="PLORD_resin_melted_hquality", amount=5},
	},
	icon = "__PLORD__/graphics/icons/fluid/resin-melting-hq.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "fluid-recipes",
	order = "a[PLORD_chemboiler_craft]-b[resin-melting-hq]-ab"
	},
	{
	type = "recipe",
	name = "PLORD_resin_advanced_processing",
	localised_name = {"", {"recipe-name.PLORD_resin_advanced_processing"}},
	category = "PLORD_chemboiler_craft",
	subgroup = "fluid-recipes",
	enabled = true,
	energy_required = 5,
	ingredients =
	{
		{type="fluid", name="PLORD_resin_melted_hquality", amount=75},
		{type="fluid", name="PLORD_resin_melted", amount=150},
		{type="fluid", name="steam", amount=100},
	},
	results=
	{
		{type="fluid", name="PLORD_resin_melted_hquality", amount=25},
		{type="fluid", name="PLORD_resin_turpentine", amount=10},
		{type="fluid", name="PLORD_resin_melted_heavyfr", amount=50},
		{type="item", name="PLORD_rosin", amount=30},
	},
	icon = "__PLORD__/graphics/icons/fluid/advanced-resin-processing.png",
	icon_size = 64, icon_mipmaps = 4,
	category = "PLORD_chemboiler_craft",
	subgroup = "fluid-recipes",
	order = "a[PLORD_chemboiler_craft]-b[resin-melting-hq]-ab"
	},
	{
	type = "recipe",
	name = "PLORD_rosin_petroleum",
	category = "chemistry",
	subgroup = "fluid-recipes",
	ingredients =
	{
		{type="fluid", name="PLORD_resin_melted_hquality", amount=20},
		{type="fluid", name="petroleum-gas", amount=5},
	},
	results=
	{
		{type="item", name="PLORD_rosin", amount_min=2, amount_max=4},
	}
	},
})