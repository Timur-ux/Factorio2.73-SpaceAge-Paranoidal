local Assert = require("__0zzzcompability__/utils/assert")
-- True Nukes Continued in compability with Clowns Nuclear mod
-- remove first effect from recipe by replacing it by nil
-- It seems like the error, so i remove it via table.remove if found
local function FixTechEffect()
	Assert(data.raw ~= nil, "Expected data.raw is nil")
	Assert(data.raw.technology ~= nil, "Expected data.raw.technology is nil")
	
	local tech = data.raw.technology["dense-neutron-flux"]
	Assert.AssertOutdated(type(tech) == 'table', "Expected data.raw.technology[\"dense-neutron-flux\"] as table not found.")
	Assert(type(tech.effects) == "table", "Expected tech.effects as table not found.")
	Assert.AssertOutdated(#tech.effects ~= 0 and tech.effects[1] == nil, "Expected tech.effects[1] to be nil but it is not.")

	local removed = table.remove(tech.effects, 1)
	Assert(
		removed == nil,
		"Expected remove nil technology effect from array, but removed: " .. serpent.block(removed, { maxlevel = 1 })
	)
end

-- recipe californium-processing and advanced-californium-processing
-- refers to plutonium-239 material in ingredients and results secions
-- which is replace by angels-plutonium-239 in angelspetrochem mod
-- there i fix it
local function _FixSection(recipe, section)
	Assert(type(recipe) == "table", "Expected recipe table")
	Assert(type(section) == "string", "Expected recipe section name as string")
	Assert(type(recipe[section]) == "table", "Section expected to be table but given: ", type(recipe[section]))
	for _, value in ipairs(recipe[section]) do
		if value and value.name == "plutonium-239" then
			value.name = "angels-plutonium-239"
		end
	end
end

local function FixCaliforniumRecipe()
	Assert(data.raw ~= nil, "Expected data.raw but it nil")
	Assert(data.raw.recipe ~= nil, "Expected data.raw.recipe but it nil")

	local recipies = data.raw.recipe
	local recipeNames = { "californium-processing", "advanced-californium-processing" }
	for _, recipeName in ipairs(recipeNames) do
		local recipe = recipies[recipeName]
		Assert.AssertOutdated(type(recipe) == "table", "Expected recipe: " .. recipeName .. " not table.")
		_FixSection(recipe, "ingredients")
		_FixSection(recipe, "results")
	end
end

-- FixTechEffect()
-- FixCaliforniumRecipe()
