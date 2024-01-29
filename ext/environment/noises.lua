local noise = require("noise")
local tne = noise.to_noise_expression


data:extend{{
  type = "noise-expression",
  name = "compile-log-test",
  intended_property = "elevation",
  expression = noise.compile_time_log(2000, noise.var("y"), tne(100) - noise.var("distance"))
}}



local function noise_layer_expression(noise_name)
  if tile_noise_enabled == false then return noise.to_noise_expression(0) end
  return noise.function_application("factorio-multioctave-noise",
    {
      x = noise.var("x"),
      y = noise.var("y"),
      persistence = tile_noise_persistence,
      seed0 = noise.var("map_seed"),
      seed1 = noise.noise_layer_name_to_id(noise_name),
      input_scale = noise.fraction(1, 6),
      output_scale = tile_noise_influence,
      octaves = 4
    }
  )
end