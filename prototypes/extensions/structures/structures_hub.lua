local structures_modify = {
	{
		type = "furnace", name = "stone-furnace", attrib = {
			crafting_categories = {PLORD.pfx .. "wood_processing"},
			energy_source = {
				burnt_inventory_size = 1
			},
		}
	},
	{
		type = "furnace", name = "steel-furnace", attrib = {
			crafting_categories = {PLORD.pfx .. "wood_processing"},
			energy_source = {
				burnt_inventory_size = 2
			},
		}
	},
	{
		type = "furnace", name = "electric-furnace", attrib = {
			crafting_categories = {PLORD.pfx .. "wood_processing"},
		}
	},
}

for _, structure in pairs(structures_modify) do
	PLORD_Utils.insert_attribute_to(structure.type, structure.name, structure.attrib)
end