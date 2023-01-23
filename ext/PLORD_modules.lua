local copy_prototype = require('__flib__.data-util').copy_prototype
local module_ = data.raw["module"]
local speed = module_["speed-module"]
local speed_2 = module_["speed-module-2"]
local speed_3 = module_["speed-module-3"]
local effective = module_["effectivity-module"]
local effective_2 = module_["effectivity-module-2"]
local effective_3 = module_["effectivity-module-3"]
local productive = module_["productivity-module"]
local productive_2 = module_["productivity-module-2"]
local productive_3 = module_["productivity-module-3"]

--[[local function factory_filter_module_limitation()
return
      {
        "sulfuric-acid",
        "basic-oil-processing",
        "advanced-oil-processing",
        "coal-liquefaction",
        "heavy-oil-cracking",
        "light-oil-cracking",
        "solid-fuel-from-light-oil",
        "solid-fuel-from-heavy-oil",
        "solid-fuel-from-petroleum-gas",
        "lubricant",
        "iron-plate",
        "copper-plate",
        "steel-plate",
        "stone-brick",
        "sulfur",
        "plastic-bar",
        "empty-barrel",
        "uranium-processing",
        "copper-cable",
        "iron-stick",
        "iron-gear-wheel",
        "electronic-circuit",
        "advanced-circuit",
        "processing-unit",
        "engine-unit",
        "electric-engine-unit",
        "uranium-fuel-cell",
        "explosives",
        "battery",
        "flying-robot-frame",
        "low-density-structure",
        "rocket-fuel",
        "nuclear-fuel",
        "nuclear-fuel-reprocessing",
        "rocket-control-unit",
        "rocket-part",
        "automation-science-pack",
        "logistic-science-pack",
        "chemical-science-pack",
        "military-science-pack",
        "production-science-pack",
        "utility-science-pack",
        "kovarex-enrichment-process",
        "steam",
        "water"
      }
end]]--

local factory_filter_mark_1 = copy_prototype(speed, "PLORD_module_factoryfilter_1")
factory_filter_mark_1.subgroup = "PLORD_factory_filters"
factory_filter_mark_1.category = "PLORD_factoryfilter"
factory_filter_mark_1.localised_description = {"item-description.PLORD_module_factoryfilter_1"}
factory_filter_mark_1.icon = "__PLORD__/graphics/icons/factory_filter_mark_1.png"
factory_filter_mark_1.icon_size = 64
factory_filter_mark_1.icon_mipmaps = 4
factory_filter_mark_1.tier = 1
factory_filter_mark_1.order = "a[factory_filters]-a[factory_filter_mark_1]"
factory_filter_mark_1.effect = {consumption = {bonus = 0.05}, pollution = {bonus = -0.05}}
factory_filter_mark_1.beacon_tint =
    {
      primary = {r = 0.84, g = 0.34, b = 0.34, a = 1.000}, -- #d75757
      secondary = {r = 0.5, g = 0.2, b = 0.2, a = 1.000}, -- #7d3333
    }
--factory_filter_mark_1.limitation = factory_filter_module_limitation()
--factory_filter_mark_1.limitation_message_key = "item-description.PLORD_module_factoryfilter_steam"


local factory_filter_mark_2 = copy_prototype(factory_filter_mark_1, "PLORD_module_factoryfilter_2")
factory_filter_mark_2.icon = "__PLORD__/graphics/icons/factory_filter_mark_2.png"
factory_filter_mark_2.localised_description = {"", {"item-description.PLORD_module_factoryfilter_2"}, "\n", {"item-description.PLORD_module_factoryfilter_1"}}
factory_filter_mark_2.tier = 2
factory_filter_mark_2.order = "a[factory_filters]-b[factory_filter_mark_2]"
factory_filter_mark_2.effect = {consumption = {bonus = 0.07}, pollution = {bonus = -0.1}}
factory_filter_mark_2.beacon_tint =
    {
      primary = {r = 0.84, g = 0.34, b = 0.34, a = 1.000}, -- #d75757
      secondary = {r = 0.5, g = 0.2, b = 0.2, a = 1.000}, -- #7d3333
    }

local factory_filter_mark_3 = copy_prototype(factory_filter_mark_1, "PLORD_module_factoryfilter_3")
factory_filter_mark_3.icon = "__PLORD__/graphics/icons/factory_filter_mark_3.png"
factory_filter_mark_3.localised_description = {"", {"item-description.PLORD_module_factoryfilter_3"}, "\n", {"item-description.PLORD_module_factoryfilter_1"}}
factory_filter_mark_3.tier = 2
factory_filter_mark_3.order = "a[factory_filters]-c[factory_filter_mark_3]"
factory_filter_mark_3.effect = {consumption = {bonus = 0.11}, pollution = {bonus = -0.14}}
factory_filter_mark_3.beacon_tint =
    {
      primary = {r = 0.84, g = 0.34, b = 0.34, a = 1.000}, -- #d75757
      secondary = {r = 0.5, g = 0.2, b = 0.2, a = 1.000}, -- #7d3333
    }

local factory_filter_mark_4 = copy_prototype(factory_filter_mark_1, "PLORD_module_factoryfilter_4")
factory_filter_mark_4.icon = "__PLORD__/graphics/icons/factory_filter_mark_4.png"
factory_filter_mark_4.localised_description = {"", {"item-description.PLORD_module_factoryfilter_4"}, "\n", {"item-description.PLORD_module_factoryfilter_1"}}
factory_filter_mark_4.tier = 2
factory_filter_mark_4.order = "a[factory_filters]-d[factory_filter_mark_4]"
factory_filter_mark_4.effect = {consumption = {bonus = 0.15}, pollution = {bonus = -0.21}, productivity = {bonus = 0.025}}
factory_filter_mark_4.beacon_tint =
    {
      primary = {r = 0.84, g = 0.34, b = 0.34, a = 1.000}, -- #d75757
      secondary = {r = 0.5, g = 0.2, b = 0.2, a = 1.000}, -- #7d3333
    }


local supplement_mark_1 = copy_prototype(speed_3, "PLORD_module_supplement_1")
supplement_mark_1.category = "PLORD_supplement"
supplement_mark_1.localised_description = {"item-description.PLORD_module_supplement_1"}
supplement_mark_1.icon = "__PLORD__/graphics/icons/supplement_mark_1.png"
supplement_mark_1.icon_size = 64
supplement_mark_1.icon_mipmaps = 4
supplement_mark_1.tier = 4
supplement_mark_1.order = "d[supplement]-a[supplement_mark_1]"
supplement_mark_1.effect = {productivity = {bonus = 0.15}, consumption = {bonus = 0.25}, pollution = {bonus = 0.25}, speed = {bonus = 0.25}}
supplement_mark_1.beacon_tint =
    {
      primary = {r = 0.84, g = 0.34, b = 0.34, a = 1.000}, -- #d75757
      secondary = {r = 0.5, g = 0.2, b = 0.2, a = 1.000}, -- #7d3333
    }

local supplement_mark_2 = copy_prototype(supplement_mark_1, "PLORD_module_supplement_2")
supplement_mark_2.icon = "__PLORD__/graphics/icons/supplement_mark_2.png"
supplement_mark_2.localised_description = {"", {"item-description.PLORD_module_supplement_2"}, "\n", {"item-description.PLORD_module_supplement_1"}}
supplement_mark_2.tier = 5
supplement_mark_2.order = "d[supplement]-b[supplement_mark_2]"
supplement_mark_2.effect = {productivity = {bonus = 0.21}, consumption = {bonus = 0.25}, pollution = {bonus = 0.5}, speed = {bonus = 0.3}}
supplement_mark_2.beacon_tint =
    {
      primary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
      secondary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
    }

local supplement_mark_3 = copy_prototype(supplement_mark_1, "PLORD_module_supplement_3")
supplement_mark_3.icon = "__PLORD__/graphics/icons/supplement_mark_3.png"
supplement_mark_3.localised_description = {"", {"item-description.PLORD_module_supplement_3"}, "\n", {"item-description.PLORD_module_supplement_1"}}
supplement_mark_3.tier = 5
supplement_mark_3.order = "d[supplement]-c[supplement_mark_3]"
supplement_mark_3.effect = {productivity = {bonus = 0.3}, consumption = {bonus = 0.5}, pollution = {bonus = 0.75}, speed = {bonus = 0.5}}
supplement_mark_3.beacon_tint =
    {
      primary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
      secondary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
    }

local supplement_mark_4 = copy_prototype(supplement_mark_1, "PLORD_module_supplement_4")
supplement_mark_4.icon = "__PLORD__/graphics/icons/supplement_mark_4.png"
supplement_mark_4.localised_description = {"", {"item-description.PLORD_module_supplement_4"}, "\n", {"item-description.PLORD_module_supplement_1"}}
supplement_mark_4.tier = 7
supplement_mark_4.order = "d[supplement]-d[supplement_mark_4]"
supplement_mark_4.effect = {productivity = {bonus = 0.5}, consumption = {bonus = 0.75}, pollution = {bonus = 1.25}, speed = {bonus = 1}}
supplement_mark_4.beacon_tint =
    {
      primary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
      secondary = {r = 0.90, g = 0.90, b = 0.90, a = 1.000},
    }


data:extend({
  {
    type = "item-subgroup",
    name = "PLORD_factory_filters",
    group = "production",
    order = "e-z"
  },
  {
    type = "module-category",
    name = "PLORD_factoryfilter"
  },
  {
    type = "module-category",
    name = "PLORD_supplement"
  },
factory_filter_mark_1, factory_filter_mark_2, factory_filter_mark_3, factory_filter_mark_4,
supplement_mark_1, supplement_mark_2, supplement_mark_3, supplement_mark_4
})