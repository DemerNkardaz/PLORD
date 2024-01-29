local biology_path = "__PLORD__/graphics/icons/biology/"
data:extend({
	{
		type = "recipe",
		name = "PLORD_biter_cells",
		icon = biology_path .. "small_biter_cells.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_researches",
		enabled = true,
		order = "a-a",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_small_biter_brain", amount=1},
			{type="item", name="PLORD_small_biter_heart", amount=1},
			{type="item", name="PLORD_small_biter_legs", amount=6},
			{type="item", name="PLORD_small_biter_shell", amount=10},
			{type="item", name="PLORD_small_biter_git", amount=1},
			{type="item", name="PLORD_small_biter_blood", amount=50},
			{type="item", name="PLORD_small_biter_lungs", amount=2},
		},
		results=
		{
			{type="item", name="PLORD_biter_cells", amount_min=1, amount_max=10},
			{type="item", name="PLORD_biter_neurovirus", amount=1, probability=0.00001}
		}
	},
	{
		type = "recipe",
		name = "PLORD_biter_DNA",
		icon = biology_path .. "small_biter_dna.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_researches",
		enabled = true,
		order = "a-b",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_biter_cells", amount=10}
		},
		results=
		{
			{type="item", name="PLORD_biter_DNA", amount_min=1, amount_max=10}
		}
	},
	{
		type = "recipe",
		name = "PLORD_spitter_cells",
		icon = biology_path .. "small_biter_cells.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_researches",
		enabled = true,
		order = "a-a",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_small_spitter_brain", amount=1},
			{type="item", name="PLORD_small_spitter_heart", amount=1},
			{type="item", name="PLORD_small_spitter_legs", amount=6},
			{type="item", name="PLORD_small_spitter_shell", amount=10},
			{type="item", name="PLORD_small_spitter_git", amount=1},
			{type="item", name="PLORD_small_spitter_blood", amount=50},
			{type="item", name="PLORD_small_spitter_lungs", amount=2},
		},
		results=
		{
			{type="item", name="PLORD_spitter_cells", amount_min=1, amount_max=10},
			{type="item", name="PLORD_biter_neurovirus", amount=1, probability=0.00001}
		}
	},
	{
		type = "recipe",
		name = "PLORD_spitter_DNA",
		icon = biology_path .. "small_biter_dna.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_researches",
		enabled = true,
		order = "a-b",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_spitter_cells", amount=10}
		},
		results=
		{
			{type="item", name="PLORD_spitter_DNA", amount_min=1, amount_max=10}
		}
	},
	{
		type = "recipe",
		name = "PLORD_artificial_small_biter",
		icon = "__base__/graphics/icons/small-biter.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_incubations",
		enabled = true,
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_biter_cells", amount=10}
		},
		results=
		{
			{type="item", name="PLORD_artificial_small_biter", amount=1, probability = 0.5},
			{type="item", name="PLORD_artificial_small_biter_dna_dmg", amount=1, probability = 0.5},
		}
	},
	{
		type = "recipe",
		name = "PLORD_artificial_small_spitter",
		icon = "__base__/graphics/icons/small-spitter.png",
		icon_size = 64, icon_mipmaps = 4,
		category = "crafting",
		subgroup = "PLORD_bioeng_incubations",
		enabled = true,
		energy_required = 1,
		ingredients =
		{
			{type="item", name="PLORD_spitter_cells", amount=10}
		},
		results=
		{
			{type="item", name="PLORD_artificial_small_spitter", amount=1},
		}
	},
})
