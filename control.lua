if script.active_mods["gvv"] then require("__gvv__.gvv")() end


--[[

local function apply_settings()    
    local settings = settings.global  
    artillery_range_modifier = 0.6
    game.forces["player"].character_health_bonus = 0
    game.forces["player"].character_inventory_slots_bonus = 10
    game.forces["player"].character_build_distance_bonus = 0
    game.forces["player"].character_item_drop_distance_bonus = 0
    game.forces["player"].character_item_pickup_distance_bonus = 0
    game.forces["player"].character_reach_distance_bonus = 0
    game.forces["player"].character_resource_reach_distance_bonus = 0
    game.forces["player"].character_loot_pickup_distance_bonus = 0
    game.forces["player"].character_running_speed_modifier = 0
    game.forces["player"].character_trash_slot_count = 0
    character_mining_speed_modifier
    manual_crafting_speed_modifier
    manual_mining_speed_modifier
    maximum_following_robot_count
    mining_drill_productivity_bonus
    laboratory_productivity_bonus
    laboratory_speed_modifier
    inserter_stack_size_bonus
    loot_pickup_distance
end


]]--

local material_tags = {
    "iron",
    "plastic",
    "wooden",
    "stone"
}


script.on_nth_tick(4, function(event)
    local entity = event.entity


end)

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
  if player then
    local character = player.character or player.cutscene_character
    if character then
      character.insert{name = "car", count = 1}
      character.insert{name = "PLORD_stating_vest_armor", count = 1}
      character.insert{name = "PLORD_flashlight_weak", count = 1}
      character.insert{name = "PLORD_NiCd_batteries_start", count = 10}
    end
  end
end)



local function pump_filter_water_to_polluted(t, name, pollution)
  local entity = data.raw[t][name]
  if entity and entity.fluid_box.filter then
    entity.surface.get_tile(entity.position)
    entity.surface.get_pollution(entity.position)
  end
  return
end

--[[
script.on_nth_tick(4,function(event)
    radius = 20
    for i,player in pairs(game.players) do
        if(player.character == nil) then break end
        player.character.disable_flashlight() 
        if(global["PLORD_flashlight_weak"]==false)then return end

        local facing_offset = {x = -math.sin(-player.character.orientation*math.pi*2),y = -math.cos(-player.character.orientation*math.pi*2)}
        local bottom = player.position.y+radius/2
        local top = player.position.y-radius/2
        local left = player.position.x-radius/2
        local right = player.position.x+radius/2

        local area = {right_bottom={x=right,y=bottom},left_top = {x=left,y=top}}

        area.right_bottom = add_table(area.right_bottom,mul_table(facing_offset,radius/2))
        area.left_top = add_table(area.left_top,mul_table(facing_offset,radius/2))

        if(false)then
            rendering.draw_rectangle{color = {1,1,1},width = 2,surface = player.surface,left_top = area.left_top,right_bottom = area.right_bottom,time_to_live = 5}
        end


        
        local armor_inventory = player.character.get_inventory(defines.inventory.character_armor)
        if(armor_inventory.is_empty()) then break end
        for j,v in pairs(armor_inventory[1].grid.equipment)do
            if(v.name == "PLORD_flashlight_weak") then 
                if(v.energy>10) then 
                    player.character.enable_flashlight() 
                    v.energy = v.energy-10
                    local target = player.surface.get_closest(player.position,player.surface.find_entities_filtered{area=area,name = "shadow"})
                    if(target) then
                        player.character.disable_flashlight() 
                        target.damage(10,player.force)
                        v.energy = v.energy-100
                    end
                end
            end
        end
    end
end)]]--
