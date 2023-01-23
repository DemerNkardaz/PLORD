require "util"
require("util_ext")
require("util_structures")

-- Generic section
require("ext/PLORD_categories_recipe")
require("ext/PLORD_items")
require("ext/PLORD_storages")
require("ext/PLORD_structures")
require("ext/PLORD_recipes")
require("ext/PLORD_modules")

-- Misc section
require("ext/misc/misc_items")
require("ext/misc/misc_recipes")

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
require("ext/metals/iron_ore_items")

-- Aluminum-craft section
require("ext/metals/aluminum_ore_items")

-- Cobalt-craft section
require("ext/metals/cobalt_ore_items")

-- Gold-craft section
require("ext/metals/gold_ore_items")

-- Nickel-craft section
require("ext/metals/nickel_ore_items")

-- Silicium-craft section
require("ext/halfmetals/silicium_ore_items")



-- Complex-craft section
require("ext/complex/pyrite_ore_items")

-- Environmental section
require("ext/environment/minerals")

data.raw["utility-constants"]["default"].inventory_width = settings.startup["PLORD_inv_w_cstm"].value
data.raw["utility-constants"]["default"].select_slot_row_count = settings.startup["PLORD_prd_w_cstm"].value
data.raw["utility-constants"]["default"].select_group_row_count = settings.startup["PLORD_grp_w_cstm"].value
data:extend({
  {
    type = "custom-input",
    name = "PLORD_flashlight_t",
    key_sequence = "F"
  }
})

