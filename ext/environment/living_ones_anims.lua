local biology_ent_path = "__PLORD__/graphics/entity/biology/"


function caterpillar_atk_anim(scale, tint)
  return
  {
    layers =
    {
      {
        width = 199,
        height = 164,
        frame_count = 22,
        direction_count = 16,
        axially_symmetrical = false,
        scale=scale,
        shift = {scale * 0.765625, scale * 0.0625},
        animation_speed = 0.4,
        stripes =
        {
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-3.png",
            width_in_frames = 6,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-5.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-6.png",
            width_in_frames = 6,
            height_in_frames = 8
          }
        }
      },
      {
        width = 108,
        height = 90,
        frame_count = 22,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {scale * 0, scale * -0.625},
        scale = scale,
        tint = tint,
        animation_speed = 0.4,
        stripes =
        {
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-mask-1.png",
            width_in_frames = 11,
            height_in_frames = 16
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-attack-mask-2.png",
            width_in_frames = 11,
            height_in_frames = 16
          }
        }
      },
    }
  }
end

function caterpillar_run_anim(scale, tint)
  return
  {
    layers =
    {
      {
        width = 193,
        height = 164,
        priority="very-low",
        frame_count = 24,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {scale * 1.01562, 0},
        scale = scale,
        still_frame = 4,
        stripes =
        {
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-5.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-run-6.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        },
      },
      {
        width = 81,
        height = 90,
        frame_count = 24,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.015625, scale * -0.6875},
        scale = scale,
        filename = biology_ent_path .. "caterpillar/spitter-run-mask.png",
        tint = tint,
      },
    }
  }
end

function caterpillar_death_anim(scale, tint)
  return
  {
    layers =
    {
      {
        width = 225,
        height = 174,
        frame_count = 16,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {scale * 0.546875, scale * 0.21875},
        priority = "very-low",
        scale = scale,
        stripes =
        {
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        },
      },
      {
        width = 166,
        height = 144,
        frame_count = 16,
        direction_count = 16,
        axially_symmetrical = false,
        shift = {scale * 0, scale * -0.0625},
        priority = "very-low",
        tint = tint,
        scale = scale,
        stripes =
        {
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-mask-1.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-mask-2.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-mask-3.png",
            width_in_frames = 8,
            height_in_frames = 8
          },
          {
            filename = biology_ent_path .. "caterpillar/spitter-die-mask-4.png",
            width_in_frames = 8,
            height_in_frames = 8
          }
        },
      },
    }
  }
end

function caterpillar_atk_param(data)
  return
  {
    type = "stream",
    ammo_category = "physical",
    cooldown = data.cooldown,
    cooldown_deviation = data.cooldown_deviation,
    range = data.range,
    range_mode = data.range_mode,
    min_attack_distance = data.min_attack_distance,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    projectile_creation_parameters = spitter_shoot_shiftings(data.scale, data.scale * scale_spitter_stream),
    use_shooter_direction = true,
    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 *1.5,
    ammo_type = make_unit_melee_ammo_type(0.5),
    cyclic_sound =
    {
      begin_sound =
      {
        {
          filename = "__base__/sound/creatures/spitter-spit-start-1.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-2.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-3.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-4.ogg",
          volume = 0.05
        }
      },
      middle_sound =
      {
        {
          filename = "__base__/sound/fight/flamethrower-mid.ogg",
          volume = 0
        }
      },
      end_sound =
      {
        {
          filename = "__base__/sound/creatures/spitter-spit-end-1.ogg",
          volume = 0
        }
      }
    },
    --sound = sounds.spitter_roars(data.roarvolume),
    animation = caterpillar_atk_anim(data.scale, data.tint)
  }
end



function bug_run_anim(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 169,
        height = 114,
        frame_count = 16,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.714844, scale * -0.246094},
        scale = scale,
        stripes =
        {
         {
          filename = biology_ent_path .. "bug/biter-run-1.png",
          width_in_frames = 8,
          height_in_frames = 16,
         },
         {
          filename = biology_ent_path .. "bug/biter-run-2.png",
          width_in_frames = 8,
          height_in_frames = 16,
         }
        }
      },

      {
        filename = biology_ent_path .. "bug/biter-run-mask1.png",
        width = 105,
        height = 81,
        frame_count = 16,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.867188},
        scale = scale,
        tint = tint1
      },

      {
        filename = biology_ent_path .. "bug/biter-run-mask2.png",
        line_length = 16,
        width = 95,
        height = 81,
        frame_count = 16,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.855469},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function bug_atk_anim(scale, tint1, tint2)
  return
  {
    layers=
    {
      {
        width = 279,
        height = 184,
        frame_count = 11,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 1.74609, scale * -0.644531},
        animation_speed = 0.3,
        scale = scale,
        stripes =
        {
         {
          filename = biology_ent_path .. "bug/biter-attack-1.png",
          width_in_frames = 6,
          height_in_frames = 8,
         },
         {
          filename = biology_ent_path .. "bug/biter-attack-2.png",
          width_in_frames = 5,
          height_in_frames = 8,
         },
         {
          filename = biology_ent_path .. "bug/biter-attack-3.png",
          width_in_frames = 6,
          height_in_frames = 8,
         },
         {
          filename = biology_ent_path .. "bug/biter-attack-4.png",
          width_in_frames = 5,
          height_in_frames = 8,
         }
        }
      },

      {
        filename = biology_ent_path .. "bug/biter-attack-mask1.png",
        width = 125,
        height = 108,
        frame_count = 11,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -1.11328},
        scale = scale,
        tint = tint1,
      },

      {
        filename = biology_ent_path .. "bug/biter-attack-mask2.png",
        width = 114,
        height = 100,
        frame_count = 11,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -1.06641},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function bug_death_anim(scale, tint, tint2)
  return
  {
    layers=
    {
      {
        width = 190,
        height = 129,
        frame_count = 17,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.621094, scale * -0.1875},
        scale = scale,
        stripes =
        {
          {
            filename = biology_ent_path .. "bug/biter-die-1.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = biology_ent_path .. "bug/biter-die-2.png",
            width_in_frames = 8,
            height_in_frames = 8,
          },
          {
            filename = biology_ent_path .. "bug/biter-die-3.png",
            width_in_frames = 9,
            height_in_frames = 8,
          },
          {
            filename = biology_ent_path .. "bug/biter-die-4.png",
            width_in_frames = 8,
            height_in_frames = 8,
          }
        }
      },

      {
        filename = biology_ent_path .. "bug/biter-die-mask1.png",
        width = 120,
        height = 109,
        frame_count = 17,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.117188, scale * -0.574219},
        scale = scale,
        tint = tint1
      },

      {
        filename = biology_ent_path .. "bug/biter-die-mask2.png",
        width = 115,
        height = 108,
        frame_count = 17,
        axially_symmetrical = false,
        direction_count = 16,
        shift = {scale * 0.128906, scale * -0.585938},
        scale = scale,
        tint = tint2
      }
    }
  }
end

function bug_atk_param(data)
  return
  {
    type = "stream",
    ammo_category = "physical",
    cooldown = data.cooldown,
    cooldown_deviation = data.cooldown_deviation,
    range = data.range,
    range_mode = data.range_mode,
    min_attack_distance = data.min_attack_distance,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    projectile_creation_parameters = spitter_shoot_shiftings(data.scale, data.scale * scale_spitter_stream),
    use_shooter_direction = true,
    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 *1.5,
    ammo_type = make_unit_melee_ammo_type(1),
    cyclic_sound =
    {
      begin_sound =
      {
        {
          filename = "__base__/sound/creatures/spitter-spit-start-1.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-2.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-3.ogg",
          volume = 0.05
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-start-4.ogg",
          volume = 0.05
        }
      },
      middle_sound =
      {
        {
          filename = "__base__/sound/fight/flamethrower-mid.ogg",
          volume = 0
        }
      },
      end_sound =
      {
        {
          filename = "__base__/sound/creatures/spitter-spit-end-1.ogg",
          volume = 0
        }
      }
    },
    --sound = sounds.spitter_roars(data.roarvolume),
    animation = bug_atk_anim(data.scale, data.tint, data.tint2)
  }
end
