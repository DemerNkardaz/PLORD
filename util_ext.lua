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

function PLORD_add_ing(t, name, ingredient)
	table.insert(data.raw.recipe[name].ingredients, ingredient)
end

function PLORD_insert_tilelist(t, name, tile_list)
	local entity = data.raw[t][name]
	if entity then
	table.insert(entity.autoplace.tile_restriction, tile_list)
	end
end