data:extend({
	{
		type = "double-setting",
		name = "Clockwork-cycle-length",
		setting_type = "runtime-global",
		default_value = 5,
		minimum_value = 0.25,
		maximum_value = 1000,
		order = "ab"
	},
	{
		type = "double-setting",
		name = "Clockwork-dusk",
		setting_type = "runtime-global",
		default_value = 0.1,
		minimum_value = 0.01,
		maximum_value = 0.99,
		order = "b"
	},
	{
		type = "double-setting",
		name = "Clockwork-evening",
		setting_type = "runtime-global",
		default_value = 0.15,
		minimum_value = 0.01,
		maximum_value = 0.99,
		order = "c"
	},
	{
		type = "double-setting",
		name = "Clockwork-morning",
		setting_type = "runtime-global",
		default_value = 0.6,
		minimum_value = 0.01,
		maximum_value = 0.99,
		order = "d"
	},
	{
		type = "double-setting",
		name = "Clockwork-dawn",
		setting_type = "runtime-global",
		default_value = 0.7,
		minimum_value = 0.01,
		maximum_value = 0.99,
		order = "ea"
	},
	{
		type = "double-setting",
		name = "Clockwork-starttime",
		setting_type = "runtime-global",
		default_value = 0.15,
		minimum_value = 0.0,
		maximum_value = 1.0,
		order = "eb"
	},
	{
		type = "int-setting",
		name = "Clockwork-darknight-percent",
		setting_type = "runtime-global",
		default_value = 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "ed"
	},
	{
		type = "bool-setting",
		name = "Clockwork-enable-flares",
		setting_type = "startup",
		default_value = true,
		order = "e"
	},	{
		type = "bool-setting",
		name = "Clockwork-flares-simple",
		setting_type = "startup",
		default_value = true,
		order = "ea"
	},
})