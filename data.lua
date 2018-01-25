if not compresseditems then compresseditems = {} end
if not compresseditems.items then compresseditems.items = {} end
if not compresseditems.recipes then compresseditems.recipes = {} end

if compresseditems then

	require("functions")
	require("prototypes.items")
	require("items-and-recipes-init")
	-- require("prototypes.recipes")
	-- require("prototypes.category")
end
