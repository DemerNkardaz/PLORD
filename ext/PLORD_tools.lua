data.raw["repair-tool"]["repair-pack"].icon = "__PLORD__/graphics/icons/tools/iron_repair_pack.png"
data.raw["repair-tool"]["repair-pack"].localised_name = {"", {"item-name.PLORD_iron_repair_pack"}}
data.raw["repair-tool"]["repair-pack"].order = "a-a-a"
data:extend({
	{
		type = "mining-tool",
		name = "PLORD_iron_axe",
		icon = "__base__/graphics/icons/steel-axe.png", icon_size = 64, icon_mipmaps = 4,
		action =
		{
		  type="direct",
		  action_delivery =
		  {
		    type = "instant",
		    target_effects =
		    {
		        type = "damage",
		        damage = { amount = 5 , type = "physical"}
		    }
		  }
		},
		durability = 4000,
		subgroup = "tool",
		order = "a[mining]-a[iron-axe]",
		speed = 4,
		stack_size = 20
	},
	{
		type = "repair-tool",
		name = "PLORD_steel_repair_pack",
		icon = "__PLORD__/graphics/icons/tools/steel_repair_pack.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "tool",
		order = "a-a-b",
		speed = 4,
		durability = 500,
		stack_size = 100
	},
	{
		type = "repair-tool",
		name = "PLORD_titan_repair_pack",
		icon = "__PLORD__/graphics/icons/tools/titan_repair_pack.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "tool",
		order = "a-a-c",
		speed = 5,
		durability = 600,
		stack_size = 100
	},
	{
		type = "repair-tool",
		name = "PLORD_aurotitan_repair_pack",
		icon = "__PLORD__/graphics/icons/tools/aurotitan_repair_pack.png",
		icon_size = 64, icon_mipmaps = 4,
		subgroup = "tool",
		order = "a-a-d",
		speed = 7,
		durability = 1000,
		stack_size = 100
	},
	{
		type = "repair-tool",
		name = "PLORD_power_repair_pack",
		icon = "__PLORD__/graphics/icons/tools/power_repair_pack.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "tool",
		order = "a-a-e",
		speed = 10,
		durability = 2500,
		stack_size = 5
	},
	{
		type = "repair-tool",
		name = "PLORD_enhanced_power_repair_pack",
		icon = "__PLORD__/graphics/icons/tools/enhanced_power_repair_pack.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "tool",
		order = "a-a-f",
		speed = 20,
		durability = 5000,
		stack_size = 5
	},
})