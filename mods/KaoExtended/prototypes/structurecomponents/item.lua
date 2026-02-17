local order = 65
local function createSC(name)
	data:extend({
		{
			type = "item",
			name = name .. "-structure-components",
			icon = "__KaoExtended__/graphics/" .. name .. "SC.png",
			subgroup = "structurecomponents",
			order = "a-" .. string.char(order),
			stack_size = 50,
			icon_size = 32,
		},
	})
	order = order + 1
end
data:extend({
	{
		type = "item-subgroup",
		name = "structurecomponents",
		group = "intermediate-products",
		order = "z-z",
	},
})
local function newRecipe(item, time)
	local rec = {
		type = "recipe",
		name = item .. "-structure-components",
		category = "crafting-machine",
		enabled = false,
		energy_required = time,
		ingredients = {},
		result = item .. "-structure-components",
	}
	data:extend({ rec })
	return rec
end
createSC("basic")
createSC("intermediate")
createSC("advanced")
createSC("anotherworld")
newRecipe("basic", 15).ingredients = {
	{ "bob-lead-plate", 33 },
	{ "bob-glass", 15 },
	{ "bob-stone-brick", 22 },
}
newRecipe("intermediate", 30).ingredients = {
	{ "basic-structure-components", 2 },
	{ "bob-brass-gear-wheel", 8 },
	{ "bob-bronze-alloy", 10 },
	{ "bob-invar-alloy", 25 },
}
newRecipe("advanced", 60).ingredients = {
	{ "intermediate-structure-components", 2 },
	{ "bob-nickel-plate", 27 },
	{ "bob-aluminium-plate", 32 },
	{ "bob-titanium-plate", 52 },
	{ "bob-cobalt-steel-alloy", 20 },
	{ "plastic-bar", 40 },
}
if data.raw.item["alien-science-pack"] then
	newRecipe("anotherworld", 120).ingredients = {
		{ "advanced-structure-components", 10 },
		{ "plastic-bar", 200 },
		{ "bob-tungsten-carbide", 200 },
		{ "bob-titanium-bearing", 200 },
		{ "bob-ceramic-bearing", 200 },
		{ "bob-gold-plate", 100 },
		{ "bob-silver-plate", 100 },
		{ "bob-nitinol-gear-wheel", 200 },
		{ "bob-alien-science-pack", 200 },
	}
else
	newRecipe("anotherworld", 120).ingredients = {
		{ "advanced-structure-components", 10 },
		{ "plastic-bar", 200 },
		{ "bob-tungsten-carbide", 200 },
		{ "bob-titanium-bearing", 200 },
		{ "bob-ceramic-bearing", 200 },
		{ "bob-gold-plate", 100 },
		{ "bob-silver-plate", 100 },
		{ "bob-nitinol-gear-wheel", 200 },
	}
end

bobmods.lib.recipe.remove_ingredient("bob-brass-alloy", "copper-plate")
bobmods.lib.recipe.remove_ingredient("bob-brass-alloy", "bob-zinc-plate")
table.insert(data.raw["recipe"]["bob-brass-alloy"].ingredients, { type = "item", name = "bob-bronze-alloy", amount = 2 })
table.insert(data.raw["recipe"]["bob-brass-alloy"].ingredients, { type = "item", name = "bob-zinc-plate", amount = 8 })

bobmods.lib.recipe.remove_ingredient("bob-invar-alloy", "iron-plate")
table.insert(data.raw["recipe"]["bob-invar-alloy"].ingredients, { type = "item", name = "bob-lead-plate", amount = 3 })
