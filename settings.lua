data:extend({
    {
	type = "int-setting",
	name = "PLORD_inv_size_cstm",
	setting_type = "startup",
	default_value = 100,
	allowed_values = {1, 10, 20, 30, 40, 50, 80, 100, 150, 200, 250, 500, 1000, 1000000},
	order = "a-a-a"
    },
    {
	type = "int-setting",
	name = "PLORD_inv_w_cstm",
	setting_type = "startup",
	default_value = 14,
	allowed_values = {1, 2, 4, 6, 10, 14, 16, 18, 24, 32, 64, 100},
	order = "a-a-b"
    },
    {
	type = "int-setting",
	name = "PLORD_prd_w_cstm",
	setting_type = "startup",
	default_value = 14,
	allowed_values = {1, 2, 4, 6, 10, 14, 16, 18, 24, 32, 64, 100},
	order = "a-a-c"
	},

	{
	type = "int-setting",
	name = "PLORD_grp_w_cstm",
	setting_type = "startup",
	default_value = 14,
	allowed_values = {1, 2, 4, 6, 10, 14, 16, 18, 24, 32, 64, 100},
	order = "a-a-d"
	},

	{
	type = "double-setting",
	name = "PLORD_turret_radius_r",
	setting_type = "startup",
	default_value = 0.05,
	order = "a-b-a"
	},
	{
	type = "double-setting",
	name = "PLORD_turret_radius_g",
	setting_type = "startup",
	default_value = 0.1,
	order = "a-b-b"
	},
	{
	type = "double-setting",
	name = "PLORD_turret_radius_b",
	setting_type = "startup",
	default_value = 0.05,
	order = "a-b-c"
	},
	{
	type = "double-setting",
	name = "PLORD_turret_radius_a",
	setting_type = "startup",
	default_value = 0.15,
	order = "a-b-d"
	},

	{
	type = "bool-setting",
	name = "PLORD_enable_craft_nuclear_boiler",
	setting_type = "startup",
	default_value = false,
	order = "c-a-a"
	},
	{
	type = "string-setting",
	name = "PLORD_enable_craft_nuclear_boiler_powerness",
	setting_type = "startup",
	default_value = "20",
	order = "c-a-b"
	},
	{
	type = "string-setting",
	name = "PLORD_enable_craft_nuclear_boiler_powerness_type",
	setting_type = "startup",
	default_value = "MW",
	allowed_values = {"W", "kW", "MW", "GW", "TW", "PW", "EW", "ZW", "YW"},
	order = "c-a-c"
	},


	{
	type = "bool-setting",
	name = "PLORD_biter_loot_toggle",
	setting_type = "startup",
	default_value = false,
	order = "h-a-a"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_mult_small_biter",
	setting_type = "startup",
	default_value = 1,
	order = "h-a-b"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_mult_medium_biter",
	setting_type = "startup",
	default_value = 1,
	order = "h-a-c"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_mult_big_biter",
	setting_type = "startup",
	default_value = 1,
	order = "h-a-d"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_mult_behemoth_biter",
	setting_type = "startup",
	default_value = 1,
	order = "h-a-e"
	},
	{
	type = "bool-setting",
	name = "PLORD_biter_loot_toggle_DNA",
	setting_type = "startup",
	default_value = false,
	order = "h-b-a"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_DNA_maxcount",
	setting_type = "startup",
	default_value = 5,
	minimum_value = 0,
	maximum_value = 512,
	order = "h-b-b"
	},
	{
	type = "int-setting",
	name = "PLORD_biter_loot_DNA_mincount",
	setting_type = "startup",
	default_value = 1,
	minimum_value = 0,
	maximum_value = 512,
	order = "h-b-c"
	},
	{
	type = "double-setting",
	name = "PLORD_biter_loot_DNA_prob",
	setting_type = "startup",
	default_value = 0.2,
	minimum_value = 0,
	maximum_value = 1,
	order = "h-b-d"
	},




	{
	type = "bool-setting",
	name = "PLORD_res_cstm_blue_cobalt",
	setting_type = "startup",
	default_value = false,
	order = "r-a-a"
	},
	{
	type = "bool-setting",
	name = "PLORD_res_cstm_green_idnium",
	setting_type = "startup",
	default_value = false,
	order = "r-a-b"
	},
	{
	type = "bool-setting",
	name = "PLORD_res_cstm_lavandula_manganese",
	setting_type = "startup",
	default_value = false,
	order = "r-a-c"
	},
	{
	type = "bool-setting",
	name = "PLORD_res_cstm_red_nickel",
	setting_type = "startup",
	default_value = false,
	order = "r-a-d"
	},


	{
	type = "bool-setting",
	name = "PLORD_glowing_belts",
	setting_type = "startup",
	default_value = false,
	order = "s-a-a"
	},
	{
	type = "bool-setting",
	name = "PLORD_bodycolor_belts",
	setting_type = "startup",
	default_value = false,
	order = "s-a-b"
	},

	--[[	{
	type = "bool-setting",
	name = "PLORD_res_cstm_luminiscent_uranium",
	setting_type = "startup",
	default_value = false,
	order = "r-a-e"
	},]]--
	{
	type = "int-setting",
	name = "PLORD_res_cstm_stack_ingots",
	setting_type = "startup",
	default_value = 75,
	minimum_value = 1,
	maximum_value = 16384,
	order = "t-b-a"
	},
})