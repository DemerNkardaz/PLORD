data.raw["item"]["offshore-pump"].order = "b[fluids]-b[offshore-pump]"
data.raw["item"]["storage-tank"].order = "b[fluid]-c[storage-tank]"
data:extend({
  {
    type = "item",
    name = "PLORD_chemical_boiler",
    icon = "__PLORD__/graphics/icons/boiler-chemical.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "e[chemical-plant]-a[chemical-boiler]",
    place_result = "PLORD_chemical_boiler",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_electrical_boiler",
    icon = "__PLORD__/graphics/icons/boiler-electrical.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]-b[electrical]",
    place_result = "PLORD_electrical_boiler",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_electrical_boiler_hvolt",
    icon = "__PLORD__/graphics/icons/boiler-electrical-highvolt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "b[steam-power]-a[boiler]-c[highvoltage]",
    place_result = "PLORD_electrical_boiler_hvolt",
    stack_size = 10
  },
  {
    type = "item",
    name = "PLORD_burner_offshore_pump",
    icon = "__PLORD__/graphics/icons/offshore-pump-burner.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "b[fluids]-a[offshore-pump]",
    place_result = "PLORD_burner_offshore_pump",
    stack_size = 20
  },
  {
    type = "item",
    name = "PLORD_electripole_small_iron",
    icon = "__PLORD__/graphics/icons/iron-pole-small.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-ab[small-electric-pole-iron]",
    place_result = "PLORD_electripole_small_iron",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_electripole_substation_advanced",
    icon = "__PLORD__/graphics/icons/substation-advanced.png",
    icon_size = 32, icon_mipmaps = 1,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[substation-advanced]",
    place_result = "PLORD_electripole_substation_advanced",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_electripole_substation_facility",
    icon = "__PLORD__/graphics/icons/substation-advanced.png",
    icon_size = 32, icon_mipmaps = 1,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-p[substation-facility]",
    place_result = "PLORD_electripole_substation_facility",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_storage_tank_onepipe",
    icon = "__PLORD__/graphics/icons/storage_tank_onepipe.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-a[storage-tank-0]",
    place_result = "PLORD_storage_tank_onepipe",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_storage_tank_twopipe",
    icon = "__PLORD__/graphics/icons/storage_tank_twopipe.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-b[storage-tank-1]",
    place_result = "PLORD_storage_tank_twopipe",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_storage_tank_eightpipe",
    icon = "__PLORD__/graphics/icons/storage_tank_eightpipe.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-e[storage-tank-eightpipe]",
    place_result = "PLORD_storage_tank_eightpipe",
    stack_size = 50
  },
  {
    type = "item",
    name = "PLORD_storage_tank_4v2",
  --  localised_description = {"item-description.storage-tank"},
    icon = data.raw["item"]["storage-tank"].icon,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "storage",
    order = "b[fluid]-d[storage-tank-plusshape]",
    place_result = "PLORD_storage_tank_4v2",
    stack_size = 50
  },
})
