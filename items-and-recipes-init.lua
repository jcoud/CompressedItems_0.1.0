local init_subgroups = {}

if compresseditems.is_bobs_init() then
	local bobs_subgroups =
	{
		"bob-material-smelting",
		"bob-material",

		--"bob-ores",
		"bob-alloy",
		"bob-gems",
		"bob-gems-ore",
		"bob-gems-raw",
		"bob-gems-cut",
		"bob-gems-polished",

	}
	--else bobs_subgroups = {}
	for _, i in pairs(bobs_subgroups) do
		table.insert(init_subgroups,i)
	end
end
local vanilla_subgroups =
{
	"raw-material",
	"raw-resource"
}

for _, i in pairs(vanilla_subgroups) do
	table.insert(init_subgroups,i)
end

for _, item in pairs(data.raw["item"]) do
	for _, v in pairs(init_subgroups) do
		if item.subgroup == v then
		if item.name == "explosives" and item.name == "wood" and item.name == "raw-wood" then
			break
		else
			compresseditems.items.ci_item_maker(item.name)
			compresseditems.items.uci_item_maker(item.name)

			compresseditems.recipes.ci_recipe_maker(item.name)
			compresseditems.recipes.uci_recipe_maker(item.name)
		end
		end
	end
end
