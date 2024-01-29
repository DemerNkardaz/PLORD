local copy_prototype = require('__flib__.data-util').copy_prototype
local misc_path = "__PLORD__/graphics/icons/misc/"
require("ext/misc/misc_scrap")
require("ext/misc/misc_projectiles")
require("ext/misc/misc_items")
require("ext/misc/misc_recipes")
require("ext/misc/misc_equipment")
require("ext/misc/misc_biters_loot")


data.raw["armor"]["light-armor"].equipment_grid = "PLORD_starting_eqpgrid"
data.raw["armor"]["heavy-armor"].equipment_grid = "PLORD_starting_eqpgrid"
data.raw["armor"]["light-armor"].inventory_size_bonus=2
data.raw["armor"]["heavy-armor"].inventory_size_bonus=4
local start_vest = copy_prototype(data.raw["armor"]["light-armor"], "PLORD_stating_vest_armor")
start_vest.icon = misc_path .. "vest.png"
start_vest.inventory_size_bonus = 4
start_vest.resistances =
    {
      {type = "physical", decrease = 3, percent = 5},
      {type = "acid", decrease = 0, percent = 2},
      {type = "explosion", decrease = 2, percent = 0},
      {type = "fire", decrease = 0, percent = 2}
    },
data:extend({start_vest,
	{
	  type = "custom-input",
	  name = "PLORD_flashlight_toggle",
	  key_sequence = "F"
	},
	{
	  type = "equipment-grid",
	  name = "PLORD_starting_eqpgrid",
	  width = 5,
	  height = 1,
	  equipment_categories = {"armor"}
	},

})