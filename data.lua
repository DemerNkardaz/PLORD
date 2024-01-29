require "util"
require("util_ext")
require("util_structures")
--
require("ext/fx/fx_smokes")

-- Generic section
require("settings_dummy_entities")
require("ext/PLORD_categories_generic")
require("ext/PLORD_categories_recipe")
require("ext/PLORD_categories_fuel")
require("ext/PLORD_belts_categories")
require("ext/PLORD_belts_recipes")
require("ext/PLORD_belts")
require("ext/PLORD_items")
require("ext/PLORD_recipes")
require("ext/PLORD_storages")
require("ext/PLORD_structures")
require("ext/PLORD_structures_defensive")
require("ext/PLORD_recipes")
require("ext/PLORD_modules")
require("ext/PLORD_tools")
require("ext/PLORD_tools_recipes")
require("ext/PLORD_weapons")
require("ext/PLORD_weapons_fx")

-- Misc section
require("ext/misc/misc")

-- Wood-craft section
require("ext/wood/wood")

-- Resin-craft section
require("ext/ore_resin")
require("ext/ore_resin_items")
require("ext/ore_resin_fluids")
require("ext/ore_resin_recipes")
require("ext/ore_resin_tech")

-- Gum-craft section
require("ext/ore_gum_items")

-- Oil-craft section 
require("ext/oil_fluids")
require("ext/oil_recipes")

-- Water-craft section
require("ext/water/water_fluids")

-- Iron-craft section
require("ext/metals/iron_ore")

-- Copper-craft section
require("ext/metals/copper_items")
require("ext/metals/copper_recipes")

-- Aluminum-craft section
require("ext/metals/aluminum_ore_items")
require("ext/metals/aluminum_ore_recipes")

-- Cobalt-craft section
require("ext/metals/cobalt_ore_items")

-- Manganese-craft section
require("ext/metals/manganese_items")

-- Magnesium-craft section
require("ext/metals/magnesium_items")

-- Lead-craft section
require("ext/metals/lead_items")

-- Silver-craft section
require("ext/metals/silver_items")
require("ext/metals/silver_recipes")

-- Gold-craft section
require("ext/metals/gold_ore_items")
require("ext/metals/gold_ore_recipes")

-- Platinum-craft section
require("ext/metals/platinum_items")

-- Palladium-craft section
require("ext/metals/palladium_items")

-- Nickel-craft section
require("ext/metals/nickel_ore_items")

-- Indium-craft section
require("ext/metals/indium_items")
require("ext/metals/indium_recipes")

-- Tin-craft section
require("ext/metals/tin_items")

-- Titan-craft section
require("ext/metals/titan_items")
require("ext/metals/titan_recipes")

-- Chrome-craft section
require("ext/metals/chromium_items")

-- Silicium-craft section
require("ext/halfmetals/silicium_ore_items")

-- Carbonium-craft section
require("ext/nonmetals/carbonium")

-- Selenium-craft section
require("ext/nonmetals/selenium_fluids")

-- Uranium-craft section
require("ext/actinida/uranium")
require("ext/actinida/uranium_items")
require("ext/actinida/uranium_recipes")
require("ext/actinida/uranium_entities")

-- Complex-craft section
require("ext/complex/complex")

-- Bio-technologies section
require("ext/bioengineering/bio_engineering")

-- Nuclear and Thermonuclear section

-- Environmental section
require("ext/environment/minerals")
require("ext/environment/living_ones")




data.raw["utility-constants"]["default"].inventory_width = settings.startup["PLORD_inv_w_cstm"].value
data.raw["utility-constants"]["default"].select_slot_row_count = settings.startup["PLORD_prd_w_cstm"].value
data.raw["utility-constants"]["default"].select_group_row_count = settings.startup["PLORD_grp_w_cstm"].value

data.raw["character"]["character"].inventory_size = settings.startup["PLORD_inv_size_cstm"].value

data.raw["utility-constants"]["default"].zoom_to_world_can_use_nightvision = true
data.raw["utility-constants"]["default"].turret_range_visualization_color = { 
    r = settings.startup["PLORD_turret_radius_r"].value, 
    g = settings.startup["PLORD_turret_radius_g"].value, 
    b = settings.startup["PLORD_turret_radius_b"].value,
    a = settings.startup["PLORD_turret_radius_a"].value }
data.raw["utility-constants"]["default"].capsule_range_visualization_color = { 
    r = settings.startup["PLORD_turret_radius_r"].value, 
    g = settings.startup["PLORD_turret_radius_g"].value, 
    b = settings.startup["PLORD_turret_radius_b"].value,
    a = settings.startup["PLORD_turret_radius_a"].value }
data.raw["utility-constants"]["default"].artillery_range_visualization_color = { r = 0.12, g = 0.0375, b = 0.0375, a = 0.15 } --15


--default_alert_icon_scale = 0.5,
--default_alert_icon_scale_by_type = {},

if settings.startup["PLORD_res_cstm_blue_cobalt"].value then
        --data.raw["item"]["PLORD_cobalt_ore"].icon =
        data.raw["item"]["PLORD_cobalt_ingot"].icon = "__PLORD__/graphics/icons/cobalt/cobalt_ingot_blue_alt.png"
        data.raw["item"]["PLORD_cobalt_ingot"].pictures = {{filename="__PLORD__/graphics/icons/cobalt/cobalt_ingot_blue.png", size=128, scale=0.17}}
        data.raw["item"]["PLORD_cobalt_sheet"].icon = "__PLORD__/graphics/icons/cobalt/cobalt_sheet_blue.png"
end
if settings.startup["PLORD_res_cstm_green_idnium"].value then
        data.raw["item"]["PLORD_indium_ingot"].icon = "__PLORD__/graphics/icons/indium/indium_ingot_green_alt.png"
        data.raw["item"]["PLORD_indium_ingot"].pictures = {{filename="__PLORD__/graphics/icons/indium/indium_ingot_green.png", size=128, scale=0.17}}
        data.raw["item"]["PLORD_indium_plate"].icon = "__PLORD__/graphics/icons/indium/indium_plate_green_alt.png"
        data.raw["item"]["PLORD_indium_plate"].pictures = {{filename="__PLORD__/graphics/icons/indium/indium_plate_green.png", size=128, scale=0.17}}
        data.raw["item"]["PLORD_indium_sheet"].icon = "__PLORD__/graphics/icons/indium/indium_sheet_green.png"
end
if settings.startup["PLORD_res_cstm_lavandula_manganese"].value then
        data.raw["item"]["PLORD_manganese_ingot"].icon = "__PLORD__/graphics/icons/manganese/manganese_ingot_lavandula_alt.png"
        data.raw["item"]["PLORD_manganese_ingot"].pictures = {{filename="__PLORD__/graphics/icons/manganese/manganese_ingot_lavandula.png", size=128, scale=0.17}}
        data.raw["item"]["PLORD_manganese_sheet"].icon = "__PLORD__/graphics/icons/manganese/manganese_sheet_lavandula.png"
end
if settings.startup["PLORD_res_cstm_red_nickel"].value then
        data.raw["item"]["PLORD_nickel_ingot"].icon = "__PLORD__/graphics/icons/nickel/nickel_ingot_red_alt.png"
        data.raw["item"]["PLORD_nickel_ingot"].pictures = {{filename="__PLORD__/graphics/icons/nickel/nickel_ingot_red.png", size=128, scale=0.17}}
        data.raw["item"]["PLORD_nickel_sheet"].icon = "__PLORD__/graphics/icons/nickel/nickel_sheet_red.png"
end




data:extend({
  {
    type = "custom-input",
    name = "PLORD_flashlight_t",
    key_sequence = "F"
  },





})

