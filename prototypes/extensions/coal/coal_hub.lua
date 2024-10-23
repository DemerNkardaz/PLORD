require(PLORD.attr_exts .. "coal/coal_items")
require(PLORD.attr_exts .. "coal/coal_ore")
require(PLORD.attr_exts .. "coal/coal_tech")
require(PLORD.attr_exts .. "coal/coal_recipes")

PLORD_Utils.assign_attribute_to("item", "wood", {burnt_result = PLORD.pfx .. "charcoal"})
PLORD_Utils.assign_attribute_to("item", "coal", {burnt_result = PLORD.pfx .. "charcoal"})