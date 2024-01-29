local copy_prototype = require('__flib__.data-util').copy_prototype
local const_drone_base = data.raw["construction-robot"]["construction-robot"]
local ligstic_drone_base = data.raw["logistic-robot"]["logistic-robot"]

local starting_battle_drone = copy_prototype(const_drone_base, "starting_battle_drone")



data:extend({
starting_battle_drone
})