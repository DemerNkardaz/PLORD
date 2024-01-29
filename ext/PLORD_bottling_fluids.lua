local copy_prototype = require('__flib__.data-util').copy_prototype
--local barrel_item_filled_base = data.raw.item[fluid.name.."-barrel"]
local barrel_item_empty_base = data.raw.item["empty-barrel"]
--local barrel_recipe_empty_base = data.raw.recipe["empty-"..fluid.name.."-barrel"]
--local barrel_recipe_fill_base = data.raw.recipe["fill-"..fluid.name.."-barrel"]



local bottle_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_side_mask.png"
local bottle_hoop_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_hoop_top_mask.png"

local bottle_empty_icon = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty.png"
local bottle_empty_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty_side_mask.png"
local bottle_empty_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty_top_mask.png"
local bottle_fill_icon = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill.png"
local bottle_fill_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill_side_mask.png"
local bottle_fill_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill_top_mask.png"




--[[for _,fluid in pairs(data.raw.fluid) do
   if barrel_item_empty_base then local create_empty_bottle = copy_prototype(barrel_item_empty_base, "PLORD_empty_bottle")
    create_empty_bottle.icon = bottle_empty_icon
    create_empty_bottle.ingredients = {"plastic-bar", 1}
   end
end]]--


local create_empty_bottle = copy_prototype(barrel_item_empty_base, "PLORD_empty_bottle")
create_empty_bottle.icon = bottle_fill_icon
create_empty_bottle.ingredients = {"plastic-bar", 1}
create_empty_bottle.stack_size = 100

data:extend ({
  create_empty_bottle
})




--[[if not data.raw["utility-constants"] then
  return
end

local technology_name = "fluid-handling"

local empty_bottle_name = "PLORD_empty_bottle"


local bottle_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_side_mask.png"
local bottle_hoop_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_hoop_top_mask.png"

local bottle_empty_icon = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty.png"
local bottle_empty_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty_side_mask.png"
local bottle_empty_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_empty_top_mask.png"
local bottle_fill_icon = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill.png"
local bottle_fill_side_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill_side_mask.png"
local bottle_fill_top_mask = "__PLORD__/graphics/icons/fluid/bottling/bottle_fill_top_mask.png"

local side_alpha = 0.75
local top_hoop_alpha = 0.75
local fluid_per_bottle = 5
local energy_per_fill = 0.1
local energy_per_empty = 0.1

local function get_technology(name)
  local technologies = data.raw["technology"]
  if technologies then
    return technologies[name]
  end
  return nil
end

local function get_item(name)
  local items = data.raw["item"]
  if items then
    return items[name]
  end
  return nil
end

local function get_recipes_for_bottle(name)
  local recipes = data.raw["recipe"]
  if recipes then
    return recipes["fill_" .. name], recipes["empty_" .. name]
  end
  return nil
end

local function generate_bottle_icons(fluid, base_icon, side_mask, top_mask)
  return
  {
    {
      icon = base_icon.icon or base_icon,
      icon_size = base_icon.icon_size or 64,
      icon_mipmaps = base_icon.icon_mipmaps or 4
    },
    {
      icon = side_mask,
      icon_size = 64,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(fluid.base_color, side_alpha, true)
    },
    {
      icon = top_mask,
      icon_size = 64,
      icon_mipmaps = 4,
      tint = util.get_color_with_alpha(fluid.flow_color, top_hoop_alpha, true)
    }
  }
end

local function create_bottle_item(name, fluid, empty_bottle_item)
  local result =
  {
    type = "item",
    name = name,
    localised_name = {"item-name.filled_bottle", fluid.localised_name or {"fluid-name." .. fluid.name}},
    icons = generate_bottle_icons(fluid, empty_bottle_item, bottle_side_mask, bottle_hoop_top_mask),
    icon_size = empty_bottle_item.icon_size,
    icon_mipmaps = empty_bottle_item.icon_mipmaps,
    subgroup = "barrel",
    order = "z[" .. name .. "]",
    stack_size = empty_bottle_item.stack_size
  }

  data:extend({result})
  return result
end


local function get_or_create_bottle_item(name, fluid, empty_bottle_item)
  local existing_item = get_item(name)
  if existing_item then
    return existing_item
  end

  return create_bottle_item(name, fluid, empty_bottle_item)
end

local function generate_bottle_recipe_icons(fluid, base_icon, side_mask, top_mask, fluid_icon_shift)
  local icons = generate_bottle_icons(fluid, base_icon, side_mask, top_mask)
  if fluid.icon and fluid.icon_size then
    table.insert(icons,
    {
      icon = fluid.icon,
      icon_size = fluid.icon_size,
      icon_mipmaps = fluid.icon_mipmaps,
      scale = 16.0 / fluid.icon_size, -- scale = 0.5 * 32 / icon_size simplified
      shift = fluid_icon_shift
    }
    )
  elseif fluid.icons then
    icons = util.combine_icons(icons, fluid.icons, {scale = 0.5, shift = fluid_icon_shift}, fluid.icon_size)
  end

  return icons
end

local function create_fill_bottle_recipe(item, fluid)
  local recipe =
  {
    type = "recipe",
    name = "fill_" .. item.name,
    localised_name = {"recipe-name.fill_bottle", fluid.localised_name or {"fluid-name." .. fluid.name}},
    category = "crafting-with-fluid",
    energy_required = energy_per_fill,
    subgroup = "fill-barrel",
    order = "z[fill-" .. item.name .. "]",
    enabled = false,
    icons = generate_bottle_recipe_icons(fluid, bottle_fill_icon, bottle_fill_side_mask, bottle_fill_top_mask, {-8, -8}),
    icon_size = 64, icon_mipmaps = 4,
    ingredients =
    {
      {type = "fluid", name = fluid.name, amount = fluid_per_bottle, catalyst_amount = fluid_per_bottle},
      {type = "item", name = empty_bottle_name, amount = 1, catalyst_amount = 1}
    },
    results=
    {
      {type = "item", name = item.name, amount = 1, catalyst_amount = 1}
    },
    allow_decomposition = false
  }

  data:extend({recipe})
  return recipe
end


local function create_empty_bottle_recipe(item, fluid)
  local recipe =
  {
    type = "recipe",
    name = "empty_" .. item.name,
    localised_name = {"recipe-name.empty_filled_bottle", fluid.localised_name or {"fluid-name." .. fluid.name}},
    category = "crafting-with-fluid",
    energy_required = energy_per_empty,
    subgroup = "empty-barrel",
    order = "z[empty-" .. item.name .. "]",
    enabled = false,
    icons = generate_bottle_recipe_icons(fluid, bottle_empty_icon, bottle_empty_side_mask, bottle_empty_top_mask, {7, 8}),
    icon_size = 64, icon_mipmaps = 4,
    ingredients =
    {
      {type = "item", name = item.name, amount = 1, catalyst_amount = 1}
    },
    results=
    {
      {type = "fluid", name = fluid.name, amount = fluid_per_bottle, catalyst_amount = fluid_per_bottle},
      {type = "item", name = empty_bottle_name, amount = 1, catalyst_amount = 1}
    },
    allow_decomposition = false
  }

  data:extend({recipe})
  return recipe
end

local function get_or_create_bottle_recipes(item, fluid)
  local fill_recipe, empty_recipe = get_recipes_for_bottle(item.name)

  if not fill_recipe then
    fill_recipe = create_fill_bottle_recipe(item, fluid)
  end
  if not empty_recipe then
    empty_recipe = create_empty_bottle_recipe(item, fluid)
  end

  return fill_recipe, empty_recipe
end

local function add_bottle_to_technology(fill_recipe, empty_recipe, technology)
  local unlock_key = "unlock-recipe"
  local effects = technology.effects

  if not effects then
    technology.effects = {}
    effects = technology.effects
  end

  local add_fill_recipe = true
  local add_empty_recipe = true

  for k,v in pairs(effects) do
    if k == unlock_key then
      local recipe = v.recipe
      if recipe == fill_recipe.name then
        add_fill_recipe = false
      elseif recipe == empty_recipe.name then
        add_empty_recipe = false
      end
    end
  end

  if add_fill_recipe then
    table.insert(effects, {type = unlock_key, recipe = fill_recipe.name})
  end
  if add_empty_recipe then
    table.insert(effects, {type = unlock_key, recipe = empty_recipe.name})
  end
end

local function log_bottle_error(string)
  log("Auto bottle generation is disabled: " .. string .. ".")
end


local function can_process_fluids(fluids, technology, empty_bottle_item)

  if not fluids then
    log_bottle_error("there are no fluids")
    return
  end

  if not technology then
    log_bottle_error("the " .. technology_name .. " technology doesn't exist")
    return
  end

  if not empty_bottle_item then
    log_bottle_error("the " .. empty_bottle_name .. " item doesn't exist")
    return
  end

  if not empty_bottle_item.icon then
    log_bottle_error("the " .. empty_bottle_name .. " item singular-icon definition doesn't exist")
    return
  end

  return true
end


local function process_fluid(fluid, technology, empty_bottle_item)

  if fluid.auto_bottle == false then return end

  if not (fluid.icon or fluid.icons) then
    log("Can't make bottle recipe for "..fluid.name..", it doesn't have any icon or icons.")
    return
  end

  local bottle_name = fluid.name .. "_bottle"

  local bottle_item = get_or_create_bottle_item(bottle_name, fluid, empty_bottle_item)

  local bottle_fill_recipe, bottle_empty_recipe = get_or_create_bottle_recipes(bottle_item, fluid)

  add_bottle_to_technology(bottle_fill_recipe, bottle_empty_recipe, technology)

end

local function process_fluids(fluids, technology, empty_bottle_item)

  if not can_process_fluids(fluids, technology, empty_bottle_item) then return end

  for name, fluid in pairs(fluids) do
    process_fluid(fluid, technology, empty_bottle_item)
  end

end

process_fluids(data.raw["fluid"], get_technology(technology_name), get_item(empty_bottle_name))
]]--