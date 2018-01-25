-- копируем из существующих предметов ->
-- изменяем как надо ->
-- инициализируем в data:extend



data:extend({
	{
		type = "item",
		name = "empty-box",
		icon = "__CompressedItems__/graphics/icons/box.png",
		icon_size = 32,
		stack_size = 1,
		hidden = true,
		flags = {hidden}
	},
	{
		type = "item",
		name = "box",
		icon = "__CompressedItems__/graphics/icons/box.png",
		icon_size = 32,
		stack_size = 1,
		hidden = true,
		flags = {hidden}
	},
	{
		type = "item-group",
		name = "ci-items-group",
		icon = "__CompressedItems__/graphics/icons/box.png",
		icon_size = 32,
		order = "z"
	},

	{
		type = "item-subgroup",
		group = "ci-items-group",
		name = "ci-items-subgroup",
		order = "b[ci]"

	},


	{
		type = "item-subgroup",
		group = "ci-items-group",
		name = "uci-items-subgroup",
		order = "a[uci]"

	},
}
)
