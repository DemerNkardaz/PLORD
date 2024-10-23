game_core = {}
flib_utils = {}
PLORD = {}

game_core.hit_effects = require("__base__.prototypes.entity.hit-effects")
game_core.explosion_animations = require("__base__.prototypes.entity.explosion-animations")
game_core.smoke_animations = require("__base__.prototypes.entity.smoke-animations")
game_core.math3d = require "math3d"
game_core.fireutil = require("__base__.prototypes.fire-util")
game_core.base_ent_sounds_path = require("__base__.prototypes.entity.sounds")

flib_utils.copy_prototype = require('__flib__.data-util').copy_prototype


PLORD.dir = "__PLORD__"
PLORD.pfx = "PLORD_"
PLORD.asset = PLORD.dir .. "/graphics/"
PLORD.asset_ent = PLORD.dir .. "/graphics/entity/"
PLORD.asset_icon = PLORD.dir .. "/graphics/icons/"
PLORD.asset_tech = PLORD.dir .. "/graphics/technology/"

PLORD.attr = PLORD.dir .. "/prototypes/"
PLORD.attr_exts = PLORD.dir .. "/prototypes/extensions/"
PLORD.attr_exts_upd = PLORD.dir .. "/prototypes/extensions_update/"
PLORD.attr_exts_ffx = PLORD.dir .. "/prototypes/extensions_final_fixes/"
PLORD.mods_compatibility = PLORD.dir .. "/prototypes/mods_compatibility"

require("lib/utils")
require(PLORD.attr .. "anims")
require(PLORD.attr .. "categories_hub")
require(PLORD.attr_exts .. "data_hub")
