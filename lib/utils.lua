PLORD_Utils = {}

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

