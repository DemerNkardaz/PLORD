local copy_prototype = require('__flib__.data-util').copy_prototype
local storage_tank_base = data.raw["storage-tank"]["storage-tank"]

storage_tank_base.fast_replaceable_group = "storage-tank"
storage_tank_base.next_upgrade = "PLORD_storage_tank_eightpipe"
storage_tank_base.fluid_box.hide_connection_info = false

local storage_tank_onepipe = copy_prototype(storage_tank_base, "PLORD_storage_tank_onepipe")
storage_tank_onepipe.minable.result = "PLORD_storage_tank_onepipe"
storage_tank_onepipe.next_upgrade = "PLORD_storage_tank_twopipe"
storage_tank_onepipe.icon = "__PLORD__/graphics/icons/storage_tank_onepipe.png"
storage_tank_onepipe.max_health = 100
storage_tank_onepipe.fluid_box =
	{
		base_area = 100,
		pipe_picture = PLORD_storagetank_singlepipes(),
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{ position = {0, -2} },
		},
	}
storage_tank_onepipe.two_direction_only = false
storage_tank_onepipe.rotatable = true
storage_tank_onepipe.pictures = 
	{
	picture =
	{
	north =
		{
			layers = {
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank.png",
					frames = 2,
					x = 0,
					width = 110,
					height = 108,
					shift = util.by_pixel(0, 4),
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank.png",
					  frames = 2,
					  x = 0,
					  width = 219,
					  height = 215,
					  shift = util.by_pixel(-0.25, 3.75),
					  scale = 0.5
					}
				},
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-shadow.png",
					priority = "extra-high",
					frames = 2,
					x = 0,
					width = 146,
					height = 77,
					shift = util.by_pixel(30, 22.5),
					draw_as_shadow = true,
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-shadow.png",
					  priority = "extra-high",
					  frames = 2,
					  x = 0,
					  width = 291,
					  height = 153,
					  shift = util.by_pixel(29.75, 22.25),
					  scale = 0.5,
					  draw_as_shadow = true
					}

				}
			}
		},
	south =
		{
			layers = {
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank.png",
					frames = 2,
					x = 0,
					width = 110,
					height = 108,
					shift = util.by_pixel(0, 4),
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank.png",
					  frames = 2,
					  x = 0,
					  width = 219,
					  height = 215,
					  shift = util.by_pixel(-0.25, 3.75),
					  scale = 0.5
					}
				},
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-shadow.png",
					priority = "extra-high",
					frames = 2,
					x = 0,
					width = 146,
					height = 77,
					shift = util.by_pixel(30, 22.5),
					draw_as_shadow = true,
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-shadow.png",
					  priority = "extra-high",
					  frames = 2,
					  x = 0,
					  width = 291,
					  height = 153,
					  shift = util.by_pixel(29.75, 22.25),
					  scale = 0.5,
					  draw_as_shadow = true
					}

				}
			}
		},
	east =
		{
			layers = {
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank.png",
					frames = 2,
					x = 110,
					width = 110,
					height = 108,
					shift = util.by_pixel(0, 4),
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank.png",
					  frames = 2,
					  x = 0,
					  width = 219,
					  height = 215,
					  shift = util.by_pixel(-0.25, 3.75),
					  scale = 0.5
					}
				},
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-shadow.png",
					priority = "extra-high",
					frames = 2,
					x = 145,
					width = 146,
					height = 77,
					shift = util.by_pixel(30, 22.5),
					draw_as_shadow = true,
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-shadow.png",
					  priority = "extra-high",
					  frames = 2,
					  x = 0,
					  width = 290,
					  height = 153,
					  shift = util.by_pixel(29.75, 22.25),
					  scale = 0.5,
					  draw_as_shadow = true
					}

				}
			}
		},
	west =
		{
			layers = {
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank.png",
					frames = 2,
					x = 110,
					width = 110,
					height = 108,
					shift = util.by_pixel(0, 4),
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank.png",
					  frames = 2,
					  x = 219,
					  width = 219,
					  height = 215,
					  shift = util.by_pixel(-0.25, 3.75),
					  scale = 0.5
					}
				},
				{
					filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-shadow.png",
					priority = "extra-high",
					frames = 2,
					x = 0,
					width = 146,
					height = 77,
					shift = util.by_pixel(30, 22.5),
					draw_as_shadow = true,
					hr_version =
					{
					  filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-shadow.png",
					  priority = "extra-high",
					  frames = 2,
					  x = 0,
					  width = 291,
					  height = 153,
					  shift = util.by_pixel(29.75, 22.25),
					  scale = 0.5,
					  draw_as_shadow = true
					}

				}
			}
		},
	},
        fluid_background = storage_tank_base.pictures.fluid_background,
        window_background = storage_tank_base.pictures.window_background,
        flow_sprite = storage_tank_base.pictures.flow_sprite,
        gas_flow = storage_tank_base.pictures.gas_flow
	}


local storage_tank_twopipe = copy_prototype(storage_tank_onepipe, "PLORD_storage_tank_twopipe")
storage_tank_twopipe.minable.result = "PLORD_storage_tank_twopipe"
storage_tank_twopipe.next_upgrade = "storage-tank"
storage_tank_twopipe.icon = "__PLORD__/graphics/icons/storage_tank_twopipe.png"
storage_tank_twopipe.fluid_box =
	{
		base_area = 150,
		pipe_picture = PLORD_storagetank_singlepipes(),
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{ position = {0, -2} }, { position = {0, 2} },
		}
	}

local storage_tank_4v2 = copy_prototype(storage_tank_onepipe, "PLORD_storage_tank_4v2")
storage_tank_4v2.minable.result = "PLORD_storage_tank_4v2"
--storage_tank_4v2.localised_description = "item-description.storage-tank"
storage_tank_4v2.next_upgrade = "storage-tank"
storage_tank_4v2.icon = "__PLORD__/graphics/icons/storage_tank_twopipe.png"
storage_tank_4v2.fluid_box =
	{
		base_area = 250,
		pipe_picture = PLORD_storagetank_singlepipes(),
		pipe_covers = pipecoverspictures(),
		pipe_connections =
		{
			{ position = {0, -2} }, { position = {0, 2} }, { position = {2, 0} }, { position = {-2, 0} },
		}
	}
storage_tank_onepipe.pictures.picture.south.layers[1].x = 0
storage_tank_onepipe.pictures.picture.south.layers[1].hr_version.x = 0
storage_tank_onepipe.pictures.picture.south.layers[2].x = 0
storage_tank_onepipe.pictures.picture.south.layers[2].hr_version.x = 0
storage_tank_onepipe.pictures.picture.east.layers[1].x = 0
storage_tank_onepipe.pictures.picture.east.layers[1].hr_version.x = 0
storage_tank_onepipe.pictures.picture.east.layers[2].x = 0
storage_tank_onepipe.pictures.picture.east.layers[2].hr_version.x = 0

local storage_tank_eightpipe = copy_prototype(storage_tank_base, "PLORD_storage_tank_eightpipe")
storage_tank_eightpipe.minable.result = "PLORD_storage_tank_eightpipe"
storage_tank_eightpipe.next_upgrade = nil
storage_tank_eightpipe.icon = "__PLORD__/graphics/icons/storage_tank_eightpipe.png"
storage_tank_eightpipe.max_health = 1000
storage_tank_eightpipe.rotatable = false
storage_tank_eightpipe.fluid_box =
  {
    base_area = 1000,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
		{
      
			{ position = {1, -2} }, { position = {2, -1} }, { position = {2, 1} }, { position = {1, 2} },
			{ position = {-2, -1} }, { position = {-2, 1} }, { position = {-1, 2} }, { position = {-1, -2} },
		}
  }
storage_tank_eightpipe.pictures.picture.sheets[1].filename = "__PLORD__/graphics/entity/storage-tank-eight/storage-tank.png"
storage_tank_eightpipe.pictures.picture.sheets[1].hr_version.filename = "__PLORD__/graphics/entity/storage-tank-eight/hr-storage-tank.png"
storage_tank_eightpipe.pictures.picture.sheets[1].frames = 1
storage_tank_eightpipe.pictures.picture.sheets[1].hr_version.frames = 1
storage_tank_eightpipe.pictures.picture.sheets[2].frames = 1
storage_tank_eightpipe.pictures.picture.sheets[2].hr_version.frames = 1

data:extend({
storage_tank_onepipe, storage_tank_twopipe, storage_tank_4v2, storage_tank_eightpipe
})





































