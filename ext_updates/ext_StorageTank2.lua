if (mods["StorageTank2"]) then
	data.raw["technology"]["adv-fluid-storage"].icon = "__PLORD__/graphics/external_assets/technology/storage-tank2.png"
	data.raw["technology"]["adv-fluid-storage"].icon_size = 256
	data.raw["technology"]["adv-fluid-storage"].icon_mipmaps = 4
	data.raw["storage-tank"]["storage-tank2"].fluid_box.base_area = 750
	PLORD_add_ing("recipe", "storage-tank2", {type="item", name="assembling-machine-1", amount=1})
end
