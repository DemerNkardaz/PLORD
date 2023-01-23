
--[[
script.on_event("plardance_flashlight_t", function (event) 
	local player = game.get_player[event.player_index]
		if player.is_flashlight_enabled ~= true then player.enable_flashlight()
		elseif	player.is_flashlight_enabled == true then player.disable_flashlight()
	end
end)



--[[

script.on_init(function()

end





script.on_event("flashlight-toggle", function(event)
  local player = game.players[event.player_index]

  if global.players_flashlight_state == nil then
    global.players_flashlight_state = {}
  end

  if global.players_flashlight_state[event.player_index] == nil then
    global.players_flashlight_state[event.player_index] = true
  end

  if global.players_flashlight_state[event.player_index] then
    global.players_flashlight_state[event.player_index] = false
    player.character.disable_flashlight()
    player.surface.create_entity({name = "flashlight-button-press", position = player.position})
  else
    global.players_flashlight_state[event.player_index] = true
    player.character.enable_flashlight()
    player.surface.create_entity({name = "flashlight-button-press", position = player.position})
  end
end)




script.on_event("flashlight-toggle", function(event)
  local player = game.players[event.player_index]
  if player.character then
    if player.character.is_flashlight_enabled() then
      player.character.disable_flashlight()
    else
      player.character.enable_flashlight()
    end
    player.play_sound{path = "flashlight-button-press"}
  end
end)




]]--






--[[

function plard_flashlight()
script.on_event("flashlight-toggle", function(event)
	local player = game.players[event.player_index]
	if player.is_flashlight_enabled == nil then player.enable_flashlight() elseif player.is_flashlight_enabled ~= nil then player.disable_flashlight()
	end
end)
end

	commands.add_command("light", nil, plard_flashlight)
--[[



	local function plard_flashlight()
		enable_flashlight(true)
	end
	commands.add_command("light", function flashlight_switcher(player)
		if is_flashlight_enabled = false then enable_flashlight() 
			or
		if is_flashlight_enabled = true then disable_flashlight()
		end
	end
	end)

--[[

	local function player_nick_print()
		game.print(player.name)
	end
	commands.add_command("I", "'m", player_nick_print)
]]--