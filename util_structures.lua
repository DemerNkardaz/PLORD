function PLORD_storagetank_singlepipes()
  return
  {
    north =
    {
      filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-single-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version =
      {
        filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-single-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5
      }
    },
    east =
    {
      filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-single-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-20, 0),
      hr_version =
      {
        filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-single-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-18.5, 0),
        scale = 0.5
      }
    },
    south =
    {
      filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-single-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version =
      {
        filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-single-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5
      }
    },
    west =
    {
      filename = "__PLORD__/graphics/entity/storage-tank-single/storage-tank-single-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(20.5, 0),
      hr_version =
      {
        filename = "__PLORD__/graphics/entity/storage-tank-single/hr-storage-tank-single-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(18.5, 0),
        scale = 0.5
      }
    }
  }
end