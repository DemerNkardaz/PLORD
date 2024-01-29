local organs_path = "__PLORD__/graphics/icons/biology/organs/"
data:extend({

-- Biters small organs items
  {
    type = "item",
    name = "PLORD_small_biter_brain",
    localised_name = {"", {"item-name.PLORD_biter_brain"}},
    icon = organs_path .. "small_biter_brain.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-a",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_biter_heart",
    localised_name = {"", {"item-name.PLORD_biter_heart"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_biter_legs",
    localised_name = {"", {"item-name.PLORD_biter_legs"}},
    icon = organs_path .. "small_biter_legs.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "PLORD_small_biter_shell",
    localised_name = {"", {"item-name.PLORD_biter_shell"}},
    icon = organs_path .. "small_biter_shell.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-d",
    stack_size = 250,
    pictures = {
    {filename=organs_path .. "small_biter_shell_1.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_2.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_3.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_4.png", size=64, scale=0.25},
       }
  },
  {
    type = "item",
    name = "PLORD_small_biter_git",
    localised_name = {"", {"item-name.PLORD_biter_git"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-e",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_biter_lungs",
    localised_name = {"", {"item-name.PLORD_biter_lungs"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_small_biter_blood",
    localised_name = {"", {"item-name.PLORD_biter_blood"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-g",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_small_biter_egg",
    localised_name = {"", {"item-name.PLORD_biter_egg"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "a-h",
    stack_size = 10
  },


-- Spitter small organs items
  {
    type = "item",
    name = "PLORD_small_spitter_brain",
    localised_name = {"", {"item-name.PLORD_spitter_brain"}},
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-a",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_spitter_heart",
    localised_name = {"", {"item-name.PLORD_spitter_heart"}},
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_spitter_legs",
    localised_name = {"", {"item-name.PLORD_spitter_legs"}},
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "PLORD_small_spitter_shell",
    localised_name = {"", {"item-name.PLORD_spitter_shell"}},
    icon = organs_path .. "small_biter_shell.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-d",
    stack_size = 250,
    pictures = {
    {filename=organs_path .. "small_biter_shell_1.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_2.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_3.png", size=64, scale=0.25},
    {filename=organs_path .. "small_biter_shell_4.png", size=64, scale=0.25},
       }
  },
  {
    type = "item",
    name = "PLORD_small_spitter_git",
    localised_name = {"", {"item-name.PLORD_spitter_git"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-e",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_small_spitter_lungs",
    localised_name = {"", {"item-name.PLORD_spitter_lungs"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_small_spitter_blood",
    localised_name = {"", {"item-name.PLORD_spitter_blood"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-g",
    stack_size = 100
  },
  {
    type = "item",
    name = "PLORD_small_spitter_egg",
    localised_name = {"", {"item-name.PLORD_spitter_egg"}},
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_bioeng_biter_organs",
    order = "b-h",
    stack_size = 10
  },







})