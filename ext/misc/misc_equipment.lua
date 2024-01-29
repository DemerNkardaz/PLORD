local misc_path = "__PLORD__/graphics/icons/misc/"
data:extend({
  {
    type = "item",
    name = "PLORD_NiCd_batteries_start",
    localised_name = {"equipment-name.PLORD_NiCd_batteries_start"},
    localised_description = {"equipment-description.PLORD_NiCd_batteries_start"},
    icon = misc_path .. "NiCd_Battery_started.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "PLORD_NiCd_batteries_start",
    subgroup = "equipment",
    default_request_amount = 5,
    stack_size = 5
  },
  {
    type = "item",
    name = "PLORD_flashlight_weak",
    localised_name = {"equipment-name.PLORD_flashlight_weak"},
    localised_description = {"equipment-description.PLORD_flashlight_weak"},
    icon = misc_path .. "flashlight.png",
    icon_size = 64, icon_mipmaps = 4,
    placed_as_equipment_result = "PLORD_flashlight_weak",
    subgroup = "equipment",
    default_request_amount = 5,
    stack_size = 5
  },
  {
    type = "battery-equipment",
    name = "PLORD_flashlight_weak",
    sprite =
    {
      filename = misc_path .. "flashlight.png",
      width = 64,
      height = 64,
      priority = "high",
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1kJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },
  {
    type = "battery-equipment",
    name = "PLORD_NiCd_batteries_start",
    sprite =
    {
      filename = misc_path .. "NiCd_Battery_started.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1kJ",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },

})