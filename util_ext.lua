local fireutil = require("__base__.prototypes.fire-util")

function PLORD_addresult(t, name, result) 
	local entity = data.raw[t][name]
	if entity and entity.minable then
		if entity.minable.result and not entity.minable.results then 
			entity.minable.results = {{entity.minable.result, entity.minable.count or 1}}
		end
		if entity.minable.results then
			table.insert(entity.minable.results, result) 
		end
	end
end

function PLORD_addloot(t, name,item)
  local entity = data.raw[t][name]
  if not entity.loot then entity.loot = {} end
  local has = false
  for _,v in pairs(entity.loot) do
    if v.item == item.item then has = true break end
    end
  if not has then
    table.insert(entity.loot,item)
    end
  end

function PLORD_addtile_mask(t, name, mask) 
  local tile = data.raw[t][name]
    if tile.collision_mask then
      table.insert(tile.collision_mask, mask) 
    end
end

--[[
function PLORD_force_addresult(t, name, result)
  local entity = data.raw[t][name]
  if entity then
    if entity and not entity.minable then entity.minable = {{entity.minable.mining_time or 1}} and 
      entity.minable.results = {{entity.minable.result, entity.minable.count or 1}}
    end
    if entity.minable.results then
      table.insert(entity.minable.results, result) 
    end
  end
end]]--

function PLORD_add_ing(t, name, ingredient)
	table.insert(data.raw.recipe[name].ingredients, ingredient)
end

function PLORD_insert_tilelist(t, name, tile_list)
	local entity = data.raw[t][name]
	if entity then
	table.insert(entity.autoplace.tile_restriction, tile_list)
	end
end


function fireutil.create_tinderboxflame(opts)
  local fire_blend_mode = opts.blend_mode or "additive"
  local fire_animation_speed = opts.animation_speed or 0.5
  local fire_scale =  0.4
  local fire_tint = {r=1,g=1,b=1,a=1}
  local fire_flags = nil
  local retval =
  {
    {
      filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0390625, -0.90625 }
    }
  }
  retval = fireutil.foreach(retval, function(tab)
    if tab.shift and tab.scale then tab.shift = { tab.shift[1] * tab.scale, tab.shift[2] * tab.scale } end
  end)
  for k, layer in pairs (retval) do
    retval[k] = util.draw_as_glow(layer)
  end
  return retval
end


function fireutil.create_blueflame(opts)
  local fire_blend_mode = opts.blend_mode or "additive"
  local fire_animation_speed = opts.animation_speed or 0.5
  local fire_scale =  opts.scale or 1
  local fire_tint = {r=1,g=1,b=1,a=1}
  local fire_flags = nil
  local retval =
  {
    {
      filename = "__PLORD__/graphics/fx/sparks.png",
      line_length = 8,
      width = 60,
      height = 118,
      frame_count = 25,
      axially_symmetrical = false,
      direction_count = 1,
      blend_mode = fire_blend_mode,
      animation_speed = fire_animation_speed,
      scale = fire_scale,
      tint = fire_tint,
      flags = fire_flags,
      shift = { -0.0390625, -0.90625 }
    }
  }
  retval = fireutil.foreach(retval, function(tab)
    if tab.shift and tab.scale then tab.shift = { tab.shift[1] * tab.scale, tab.shift[2] * tab.scale } end
  end)
  for k, layer in pairs (retval) do
    retval[k] = util.draw_as_glow(layer)
  end
  return retval
end
