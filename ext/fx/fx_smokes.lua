local smoke_animations = require("__base__.prototypes.entity.smoke-animations")
local util = require("util")

local smoke_fast_animation = smoke_animations.trivial_smoke_fast
local trivial_smoke = smoke_animations.trivial_smoke

data:extend
{

  trivial_smoke
  {
    name = "black_fuel_smoke",
    color = {r = 0.07, g = 0.07, b = 0.1, a = 0.3},
    start_scale = 0.15,
    fade_in_duration = 60
  },


}