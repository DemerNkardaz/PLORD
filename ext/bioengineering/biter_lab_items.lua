local biology_path = "__PLORD__/graphics/icons/biology/"
local biter_base_icon = biology_path .. "base_biter.png"
local biter_base_icon_mask_1 = biology_path .. "base_biter_mask_1.png"
local biter_base_icon_mask_2 = biology_path .. "base_biter_mask_2.png"

local spitter_base_icon = biology_path .. "base_spitter.png"
local spitter_base_icon_mask_1 = biology_path .. "base_spitter_mask_1.png"
local spitter_base_icon_mask_2 = biology_path .. "base_spitter_mask_2.png"

local worm_base_icon = biology_path .. "base_worm.png"
local worm_base_icon_mask_1 = biology_path .. "base_worm_mask_1.png"
local worm_base_icon_mask_2 = biology_path .. "base_worm_mask_2.png"

local armoured_biter_base_icon = biology_path .. "base_armoured_biter.png"
local armoured_biter_base_icon_mask_1 = biology_path .. "base_armoured_biter_mask_1.png"
local armoured_biter_base_icon_mask_2 = biology_path .. "base_armoured_biter_mask_2.png"

local biter_base_icon_mask_1_alpha = 0.9
local biter_base_icon_mask_2_alpha = 0.9
local tint_base = {r=0.75, g=0.35, b=0.35, a=1}
local tint2_base = {r=1, g=1, b=1, a=1}

data:extend({

  {
    type = "item",
    name = "PLORD_biter_DNA",
    localised_name = {"", {"item-name.PLORD_biter_DNA"}},
    icon = biology_path .. "small_biter_dna.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biters_DNA",
    order = "a-b",
    stack_size = 100,
    pictures = {
      {filename=biology_path .. "DNA_container.png", size=64, scale=0.25},
    }
  },
  {
    type = "item",
    name = "PLORD_biter_cells",
    localised_name = {"", {"item-name.PLORD_biter_cells"}},
    icon = biology_path .. "small_biter_cells.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_researches",
    order = "a-a",
    stack_size = 100,
    pictures = {
      {filename=biology_path .. "DNA_container.png", size=64, scale=0.25},
    }
  },
  {
    type = "item",
    name = "PLORD_spitter_DNA",
    localised_name = {"", {"item-name.PLORD_spitter_DNA"}},
    icon = biology_path .. "small_spitter_dna.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biters_DNA",
    order = "a-b",
    stack_size = 100,
    pictures = {
      {filename=biology_path .. "DNA_container.png", size=64, scale=0.25},
    }
  },
  {
    type = "item",
    name = "PLORD_spitter_cells",
    localised_name = {"", {"item-name.PLORD_spitter_cells"}},
    icon = biology_path .. "small_biter_cells.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_researches",
    order = "a-a",
    stack_size = 100,
    pictures = {
      {filename=biology_path .. "DNA_container.png", size=64, scale=0.25},
    }
  },
  {
    type = "item",
    name = "PLORD_biter_neurovirus",
    localised_name = {"", {"item-name.PLORD_biter_neurovirus"}},
    icon = biology_path .. "neurovirus.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_researches",
    order = "z-a",
    stack_size = 100,
    pictures = {
      {filename=biology_path .. "DNA_container.png", size=64, scale=0.25},
    }
  },
-- Biters units items
  {
    type = "item",
    name = "PLORD_artificial_young_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(young_biter_tint, young_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-a",
    place_result = "PLORD_artificial_young_biter",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_artificial_small_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(small_biter_tint1, small_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-b",
    place_result = "PLORD_artificial_small_biter",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_artificial_medium_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(medium_biter_tint1, medium_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-c",
    place_result = "PLORD_artificial_medium_biter",
    stack_size = 20
  },
  {
    type = "item",
    name = "PLORD_artificial_big_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(big_biter_tint1, big_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-d",
    place_result = "PLORD_artificial_big_biter",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_artificial_behemoth_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(behemoth_biter_tint1, behemoth_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-e",
    place_result = "PLORD_artificial_behemoth_biter",
    stack_size = 5
  },
  {
    type = "item",
    name = "PLORD_artificial_leviathan_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(leviathan_biter_tint, leviathan_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-f",
    place_result = "PLORD_artificial_leviathan_biter",
    stack_size = 5
  },
  {
    type = "item",
    name = "PLORD_artificial_megatheria_biter",
    icon = "__base__/graphics/icons/small-biter.png",
    icons = generate_biters_icons(megatheria_biter_tint, megatheria_biter_tint2, biter_base_icon, biter_base_icon_mask_1, biter_base_icon_mask_2),
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "a-g",
    place_result = "PLORD_artificial_megatheria_biter",
    stack_size = 1
  },
  {
    type = "item",
    name = "PLORD_artificial_small_spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icons = generate_biters_icons(small_spitter_tint1, small_spitter_tint2, spitter_base_icon, spitter_base_icon_mask_1, spitter_base_icon_mask_2),
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations",
    order = "b-a",
    place_result = "PLORD_artificial_small_spitter",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_artificial_small_biter_dna_dmg",
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_incubations_bad_dna",
    order = "a-a",
    place_result = "PLORD_artificial_small_biter_dna_dmg",
    stack_size = 10
  },
})
