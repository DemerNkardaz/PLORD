--local require("ext/environment/minerals_util")
local copy_prototype = require('__flib__.data-util').copy_prototype
local rock_huge_base = data.raw["simple-entity"]["rock-huge"]

local vanilla_watertiles_list = {
	"water",
	"water-green",
	"water-mud",
	"water-shallow",
	"water-wube",
}
local vanilla_grndtiles_list = {
    "dirt-1",
    "dirt-2",
    "dirt-3",
    "dirt-4",
    "dirt-5",
    "dirt-6",
    "dirt-7",
    "dry-dirt",
    "grass-1",
    "grass-2",
    "grass-3",
    "grass-4",
    "landfill",
    "red-desert-0",
    "red-desert-1",
    "red-desert-2",
    "red-desert-3",
    "sand-1",
    "sand-2",
    "sand-3",
						}
local alienbiomes_grndtiles_list = {
"frozen-snow-0", "frozen-snow-1", "frozen-snow-2", "frozen-snow-3", "frozen-snow-4", "frozen-snow-5", "frozen-snow-6", "frozen-snow-7", "frozen-snow-8", "frozen-snow-9",
"mineral-aubergine-dirt-1", "mineral-aubergine-dirt-2", "mineral-aubergine-dirt-3", "mineral-aubergine-dirt-4", "mineral-aubergine-dirt-5", "mineral-aubergine-dirt-6",
"mineral-aubergine-dirt-7", "mineral-aubergine-dirt-8", "mineral-aubergine-dirt-9", "mineral-aubergine-sand-1", "mineral-aubergine-sand-2", "mineral-aubergine-sand-3",
"mineral-beige-dirt-1", "mineral-beige-dirt-2", "mineral-beige-dirt-3", "mineral-beige-dirt-4", "mineral-beige-dirt-5", "mineral-beige-dirt-6", "mineral-beige-dirt-7",
"mineral-beige-dirt-8", "mineral-beige-dirt-9", "mineral-beige-sand-1", "mineral-beige-sand-2", "mineral-beige-sand-3", "mineral-black-dirt-1", "mineral-black-dirt-2",
"mineral-black-dirt-3", "mineral-black-dirt-4", "mineral-black-dirt-5", "mineral-black-dirt-6", "mineral-black-dirt-7", "mineral-black-dirt-8", "mineral-black-dirt-9",
"mineral-black-sand-1", "mineral-black-sand-2", "mineral-black-sand-3", "mineral-brown-dirt-1", "mineral-brown-dirt-2", "mineral-brown-dirt-3", "mineral-brown-dirt-4",
"mineral-brown-dirt-5", "mineral-brown-dirt-6", "mineral-brown-dirt-7", "mineral-brown-dirt-8", "mineral-brown-dirt-9", "mineral-brown-sand-1", "mineral-brown-sand-2",
"mineral-brown-sand-3", "mineral-cream-dirt-1", "mineral-cream-dirt-2", "mineral-cream-dirt-3", "mineral-cream-dirt-4", "mineral-cream-dirt-5", "mineral-cream-dirt-6",
"mineral-cream-dirt-7", "mineral-cream-dirt-8", "mineral-cream-dirt-9", "mineral-cream-sand-1", "mineral-cream-sand-2", "mineral-cream-sand-3", "mineral-dustyrose-dirt-1",
"mineral-dustyrose-dirt-2", "mineral-dustyrose-dirt-3", "mineral-dustyrose-dirt-4", "mineral-dustyrose-dirt-5", "mineral-dustyrose-dirt-6", "mineral-dustyrose-dirt-7",
"mineral-dustyrose-dirt-8", "mineral-dustyrose-dirt-9", "mineral-dustyrose-sand-1", "mineral-dustyrose-sand-2", "mineral-dustyrose-sand-3", "mineral-grey-dirt-1",
"mineral-grey-dirt-2", "mineral-grey-dirt-3", "mineral-grey-dirt-4", "mineral-grey-dirt-5", "mineral-grey-dirt-6",  "mineral-grey-dirt-7", "mineral-grey-dirt-8",
"mineral-grey-dirt-9", "mineral-grey-sand-1", "mineral-grey-sand-2",  "mineral-grey-sand-3", "mineral-purple-dirt-1", "mineral-purple-dirt-2", "mineral-purple-dirt-3",
"mineral-purple-dirt-4", "mineral-purple-dirt-5", "mineral-purple-dirt-6", "mineral-purple-dirt-7", "mineral-purple-dirt-8", "mineral-purple-dirt-9", "mineral-purple-sand-1",
"mineral-purple-sand-2", "mineral-purple-sand-3",
"mineral-red-dirt-1", "mineral-red-dirt-2", "mineral-red-dirt-3", "mineral-red-dirt-4", "mineral-red-dirt-5", "mineral-red-dirt-6", "mineral-red-dirt-7", "mineral-red-dirt-8",
"mineral-red-dirt-9", "mineral-red-sand-1", "mineral-red-sand-2", "mineral-red-sand-3",
"mineral-tan-dirt-1", "mineral-tan-dirt-2", "mineral-tan-dirt-3", "mineral-tan-dirt-4", "mineral-tan-dirt-5", "mineral-tan-dirt-6", "mineral-tan-dirt-7", "mineral-tan-dirt-8",
"mineral-tan-dirt-9", "mineral-tan-sand-1", "mineral-tan-sand-2", "mineral-tan-sand-3",
"mineral-violet-dirt-1", "mineral-violet-dirt-2", "mineral-violet-dirt-3", "mineral-violet-dirt-4", "mineral-violet-dirt-5", "mineral-violet-dirt-6", "mineral-violet-dirt-7",
"mineral-violet-dirt-8", "mineral-violet-dirt-9", "mineral-violet-sand-1", "mineral-violet-sand-2", "mineral-violet-sand-3", "mineral-white-dirt-1", "mineral-white-dirt-2",
"mineral-white-dirt-3", "mineral-white-dirt-4", "mineral-white-dirt-5", "mineral-white-dirt-6", "mineral-white-dirt-7", "mineral-white-dirt-8", "mineral-white-dirt-9",
"mineral-white-sand-1", "mineral-white-sand-2", "mineral-white-sand-3", "vegetation-blue-grass-1", "vegetation-blue-grass-2",
"vegetation-green-grass-1", "vegetation-green-grass-2", "vegetation-green-grass-3", "vegetation-green-grass-4", "vegetation-mauve-grass-1", "vegetation-mauve-grass-2",
"vegetation-olive-grass-1", "vegetation-olive-grass-2",
"vegetation-orange-grass-1", "vegetation-orange-grass-2", "vegetation-purple-grass-1",
"vegetation-purple-grass-2", "vegetation-red-grass-1", "vegetation-red-grass-2",
"vegetation-turquoise-grass-1", "vegetation-turquoise-grass-2", 
"vegetation-violet-grass-1", "vegetation-violet-grass-2",
"vegetation-yellow-grass-1", "vegetation-yellow-grass-2",
"volcanic-blue-heat-1", "volcanic-blue-heat-2", "volcanic-blue-heat-3", "volcanic-blue-heat-4",
"volcanic-green-heat-1", "volcanic-green-heat-2", "volcanic-green-heat-3", "volcanic-green-heat-4",
"volcanic-orange-heat-1", "volcanic-orange-heat-2", "volcanic-orange-heat-3", "volcanic-orange-heat-4",
"volcanic-purple-heat-1", "volcanic-purple-heat-2", "volcanic-purple-heat-3", "volcanic-purple-heat-4",
}

local mineral_pyrite_huge = copy_prototype(rock_huge_base, "mineral_pyrite_huge")
mineral_pyrite_huge.pictures =
	{
		{
        filename = "__PLORD__/graphics/decorative/rock_huge_pyrite/rock-huge-05.png",
        width = 101,
        height = 90,
        shift = {0.25, 0.0625},
        hr_version =
        {
          filename = "__PLORD__/graphics/decorative/rock_huge_pyrite/hr-rock-huge-05.png",
          width = 201,
          height = 179,
          scale = 0.5,
          shift = {0.25, 0.0625}
        }
      }
	}
mineral_pyrite_huge.pictures[1].hr_version.filename = "__PLORD__/graphics/decorative/rock_huge_pyrite/hr-rock-huge-05.png"
mineral_pyrite_huge.minable.results = {
										{name = "PLORD_pyrite_ore", amount_min = 10, amount_max = 100},
										{name = "PLORD_cobalt_ore", amount_min = 0, amount_max = 5, probability = 0.05},
										{name = "PLORD_nickel_ore", amount_min = 0, amount_max = 10, probability = 0.10},
										{name = "copper-ore", amount_min = 0, amount_max = 20, probability = 0.15},
										{name = "PLORD_gold_ore", amount_min = 0, amount_max = 2, probability = 0.01}
										}
mineral_pyrite_huge.icon = "__PLORD__/graphics/icons/decorative/mineral_pyrite_huge.png"
mineral_pyrite_huge.icon_size = 101
mineral_pyrite_huge.icon_mipmaps = 1
mineral_pyrite_huge.autoplace =
    {
		influence = 0.3,
		sharpness = 1,
		noise_octaves_difference = -2.3,
		noise_persistence = 1,
		starting_area_amount = 1,
		starting_area_size = 1,
		tile_restriction = nil
    }
PLORD_insert_tilelist("simple-entity", "mineral_pyrite_huge", vanilla_grndtiles_list)
PLORD_insert_tilelist("simple-entity", "mineral_pyrite_huge", alienbiomes_grndtiles_list)
PLORD_insert_tilelist("simple-entity", "mineral_pyrite_huge", vanilla_watertiles_list[4])
data:extend ({
	mineral_pyrite_huge
})
