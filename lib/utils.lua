PLORD_Utils = {}

PLORD_Utils.get_objects_filtered = function(filters)
	local results = {}

	for type, entities in pairs(data.raw) do
		for name, entity in pairs(entities) do
			if entity[filters.filter] == filters.value then
				table.insert(results, entity)
			end
		end
	end

	return results
end

PLORD_Utils.push_attribute_to = function(t, names, assigns, mode)
	mode = mode or "insert"
	-- Приводим к таблице, если передано одно имя
	if type(names) == "string" then 
		names = {names} 
	end

	for _, name in ipairs(names) do
		local entity = data.raw[t][name]
		if not entity then 
			error("Entity not found: " .. name) 
		end

		if mode == "assign" then
			for assign, value in pairs(assigns) do
				entity[assign] = value
			end
		elseif mode == "insert" then
			for assign, value in pairs(assigns) do
				if type(value) == "table" then
					if not entity[assign] then 
						entity[assign] = {} 
					end

					if #value > 0 then
						for _, sub_value in ipairs(value) do
							table.insert(entity[assign], sub_value)
						end
					else
						for sub_key, sub_value in pairs(value) do
							entity[assign][sub_key] = sub_value
						end
					end
				else
					if not entity[assign] then 
						entity[assign] = {} 
					end
					table.insert(entity[assign], value)
				end
			end
		end
	end
end


PLORD_Utils.make_categories = function(type, array)
	local categories = {}

	for _, item in ipairs(array) do
		local category = {
				type = type,
				name = PLORD.pfx .. item.name
		}

		if item.icon then
				category.icon = item.icon
		end

		if item.subgroup then
				category.subgroup = item.subgroup
		end

		if item.hidden then
				category.hidden = item.hidden
		end

		table.insert(categories, category)
	end

	data:extend(categories)
end

PLORD_Utils.add_loot = function(t, name, items)
	local entity = data.raw[t][name]

	if not entity.minable then
		entity.minable = {
			mining_particle = "stone-particle",
			mining_time = 1,
			results = {}
		}
	end

	if entity.minable then
		if entity.minable.result then
			local origin_loot = {{type = "item", name = entity.minable.result, amount = entity.minable.count}}
			entity.minable.result = nil
			entity.minable.count = nil
			entity.minable.results = origin_loot
		end

		if type(items) == "table" then
			for _, item in ipairs(items) do
				table.insert(entity.minable.results, item)
			end
		else
			table.insert(entity.minable.results, items)
		end
	end
end
