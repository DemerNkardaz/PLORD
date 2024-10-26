local attributes = {
	["item"] = {
		{"wood", {burnt_result = PLORD.pfx .. "charcoal"}, "assign"},
		{"coal", {burnt_result = PLORD.pfx .. "coal_ash_slag"}, "assign"},
	},
}

PLORD_Utils.push_attribute_bridge(attributes)