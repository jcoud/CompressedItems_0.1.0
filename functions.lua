function compresseditems.is_bobs_init()
	if bobmods and bobmods.lib and (bobmods.plates or bobmods.ores or bobmods.gems) then
		return true
	else
		return false
	end
end

function compresseditems.items.ci_item_maker(source_item_name)
	local ci_item =
	{
		type = "item",
		name = "ci-"..source_item_name,
		localised_name = {"item-name.box", {"item-name." ..source_item_name}},
		icons =
			{
				{
					icon = "__CompressedItems__/graphics/icons/box.png",
				},
				{
					icon = data.raw.item[source_item_name].icon,
					scale = 0.6,
					shift = {-8,-8}
				}
			},
		icon_size = 32,
		subgroup = "ci-items-subgroup",
		stack_size = data.raw.item[source_item_name].stack_size,
		order = data.raw.item[source_item_name].order,
		flags = {"goes-to-main-inventory"}
	}
	data:extend({ci_item})
end

function compresseditems.items.uci_item_maker(source_item_name)
	local uci_item =
	{
		type = "item",
		name = "uci-"..source_item_name,
		localised_name = {"item-name.empty-box", {"item-name." ..source_item_name}},
		icons =
			{
				{
					icon = data.raw.item[source_item_name].icon,
				},
				{
					icon = "__CompressedItems__/graphics/icons/box.png",
					scale = 0.6,
					shift = {-8,-8}
				}
			},
		icon_size = 32,
		subgroup = "uci-items-subgroup",
		stack_size = data.raw.item[source_item_name].stack_size,
		order = data.raw.item[source_item_name].order,
		flags = {"goes-to-main-inventory"}
	}
	data:extend({uci_item})
end

function compresseditems.recipes.uci_recipe_maker(source_item_name)
	local uci_recipe =
	{
		type = "recipe",
		name = "uci-"..source_item_name,
		localised_name = {"item-name.empty-box", {"item-name." ..source_item_name}},
		energy = 1.5,
		category = "crafting",
		ingredients = {{"ci-"..source_item_name, 1}},
		icons =
			{
				{
					icon = data.raw.item[source_item_name].icon,
				},
				{
					icon = "__CompressedItems__/graphics/icons/box.png",
					scale = 0.6,
					shift = {-8,-8}
				}
			},
		icon_size = 32,
		result = source_item_name,
		subgroup = "uci-items-subgroup",
		result_count = data.raw.item[source_item_name].stack_size
	}
	data:extend({uci_recipe})
end

function compresseditems.recipes.ci_recipe_maker(source_item_name)
	local ci_recipe =
	{
		type = "recipe",
		name = "ci-"..source_item_name,
		localised_name = {"item-name.box", {"item-name." ..source_item_name}},
		energy = 1.5,
		category = "crafting",
		ingredients = {{source_item_name, data.raw.item[source_item_name].stack_size}},
		result = "ci-"..source_item_name
	}
	data:extend({ci_recipe})
end
