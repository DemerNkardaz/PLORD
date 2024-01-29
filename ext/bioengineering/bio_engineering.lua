require("biter_lab")

data:extend({
-- Adding Bio categories
  {
    type = "item-group",
    name = "PLORD_bio_engineering",
    order = "v-a",
    icon = "__PLORD__/graphics/item_groups/bio_engineering.png",
    icon_size = 256,
    icon_mipmaps = 2
  },
   {
    type = "item-subgroup",
    name = "PLORD_bioeng_researches",
    group = "PLORD_bio_engineering",
    order = "a-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_incubations",
    group = "PLORD_bio_engineering",
    order = "a-b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_incubations_bad_dna",
    group = "PLORD_bio_engineering",
    order = "a-c"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_biters_DNA",
    group = "PLORD_bio_engineering",
    order = "h-b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_biter_organs",
    group = "PLORD_bio_engineering",
    order = "h-a"
  },
-- Entities
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_animals",
    group = "PLORD_bio_engineering",
    order = "d-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_spawns_dna_dmg",
    group = "PLORD_bio_engineering",
    order = "z-b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_bioeng_spawns",
    group = "PLORD_bio_engineering",
    order = "z-a"
  },
 -- Recipe subgroups
  {
    type = "recipe-category",
    name = "PLORD_bio_engineering"
  },
 })