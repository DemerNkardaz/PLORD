local sound_axe_mining_ore = data.raw["utility-sounds"].default.axe_mining_ore
data:extend({
	{
	  type = "ammo-category",
	  name = "PLORD_tinderbox"
	},
	{
	  type = "ammo-category",
	  name = "PLORD_firstaid_kit_throwable"
	},
  	{
  	type = "capsule",
  	name = "PLORD_tinderbox",
  	icon = "__PLORD__/graphics/icons/misc/tinderbox.png",
  	icon_size = 64, icon_mipmaps = 4,
  	capsule_action =
  	{
  	  type = "throw",
  	  attack_parameters =
  	  {
  	    type = "projectile",
  	    activation_type = "throw",
  	    ammo_category = "PLORD_tinderbox",
  	    cooldown = 30,
  	    projectile_creation_distance = 0.5,
  	    range = 4,
  	    ammo_type =
  	    {
  	      category = "PLORD_tinderbox",
  	      target_type = "position",
  	      action =
  	      {
  	        {
  	          type = "direct",
  	          action_delivery =
  	          {
  	            type = "projectile",
  	            projectile = "PLORD_tinderbox_projectile",
  	            starting_speed = 2
  	          }
  	        },
  	        {
  	          type = "direct",
  	          action_delivery =
  	          {
  	            type = "instant",
  	            target_effects =
  	            {
  	              {
  	                type = "play-sound",
  	                sound = {filename = "__PLORD__/sound/tinderbox.ogg", volume = 0.25, min_speed = 0.9, max_speed = 1.1}
  	              }
  	            }
  	          }
  	        }
  	      }
  	    }
  	  }
  	},
  	subgroup = "capsule",
  	order = "a[tinderbox]",
  	stack_size = 100
  	},

	{
	type = "capsule",
	name = "PLORD_firsaid_kit",
	icon = "__PLORD__/graphics/icons/misc/firstaid_kit.png",
	icon_size = 64, icon_mipmaps = 4,
	subgroup = "capsule",
	capsule_action =
	{
	  type = "use-on-self",
	  attack_parameters =
	  {
	    type = "projectile",
	    activation_type = "consume",
	    ammo_category = "capsule",
	    cooldown = 30,
	    range = 40,
	    ammo_type =
	    {
	      category = "capsule",
	      target_type = "position",
	      action =
	      {
	        type = "direct",
	        action_delivery =
	        {
	          type = "instant",
	          target_effects =
	          {
	            {
	              type = "damage",
	              damage = {type = "physical", amount = -250}
	            },
	            --[[{
	              type = "play-sound",
	              sound = sounds.eat_fish
	            }]]--
	          }
	        }
	      }
	    }
	  }
	},
	order = "h[raw-fish]",
	stack_size = 100
	},

	{
	type = "item-entity",
	name = "PLORD_firstaid_kit_e_onground",
	icon = "__PLORD__/graphics/icons/misc/firstaid_kit.png",
	icon_size = 64, icon_mipmaps = 4,
	flags = {"placeable-off-grid", "not-on-map"},
	max_health = 1,
	minable = {mining_time = 0.025, result = "PLORD_firsaid_kit"},
	},

  	{
  	type = "capsule",
  	name = "PLORD_firsaid_kit_throw",
  	icon = "__PLORD__/graphics/icons/misc/firstaid_kit.png",
  	icon_size = 64, icon_mipmaps = 4,
  	capsule_action =
  	{
  	  type = "throw",
  	  attack_parameters =
  	  {
  	    type = "projectile",
  	    activation_type = "throw",
  	    ammo_category = "PLORD_firstaid_kit_throwable",
  	    cooldown = 30,
  	    projectile_creation_distance = 0.5,
  	    range = 40,
  	    ammo_type =
  	    {
  	      category = "PLORD_tinderbox",
  	      target_type = "position",
  	      action =
  	      {
  	        {
  	          type = "direct",
  	          action_delivery =
  	          {
  	            type = "projectile",
  	            projectile = "PLORD_firstaid_kit_projectile",
  	            starting_speed = 0.6
  	          }
  	        },
  	        --[[{
  	          type = "direct",
  	          action_delivery =
  	          {
  	            type = "instant",
  	            target_effects =
  	            {
  	              {
  	                type = "play-sound",
  	                sound = {filename = "__PLORD__/sound/tinderbox.ogg", volume = 0.25, min_speed = 0.9, max_speed = 1.1}
  	              }
  	            }
  	          }
  	        }]]--
  	      }
  	    }
  	  }
  	},
  	subgroup = "capsule",
  	order = "h[raw-fish]",
  	stack_size = 100
  	},

})
