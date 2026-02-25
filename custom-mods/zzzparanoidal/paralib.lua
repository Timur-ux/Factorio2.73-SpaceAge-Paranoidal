paralib = paralib or {}
paralib.utils = paralib.utils or {}
paralib.debugLevels = { NoDebug = 0, DebugToLog = 1, DebugAbort = 2 }
paralib.debug = paralib.debugLevels.DebugToLog

paralib.ProcessError = function(message)
	if paralib.debug == paralib.debugLevels.NoDebug then
		return
	end
	if paralib.debug == paralib.debugLevels.DebugToLog then
		log("------------------------")
		log("DEBUG: " .. message)
		log(debug.traceback())
		log("------------------------")
		return
	end
	if paralib.debug == paralib.debugLevels.DebugAbort then
		assert(false, "DEBUG: " .. message)
	end
end

paralib.bobmods = paralib.bobmods or {}
paralib.bobmods.lib = paralib.bobmods.lib or {}
paralib.bobmods.lib.tech = paralib.bobmods.lib.tech or {}
paralib.bobmods.lib.recipe = paralib.bobmods.lib.recipe or {}

---Check that data.raw[section][name] exists
---@param section string
---@param name string
paralib.EnsureExists = function(section, name)
	if not data.raw[section] then
		paralib.ProcessError("data.raw[" .. section .. "] does not exists!")
		return
	end
	if not data.raw[section][name] then
		paralib.ProcessError("data.raw[" .. section .. "][" .. name .. "] does not exists!")
		return
	end
end

---Check that recipe part(ingredient/result) exists
---@param partName string
---@param recipePart table {type = "...", name = "...", amount = ...}
paralib.utils.EnsureRecipePartExists = function(partName, recipePart)
	if type(recipePart) ~= "table" then
		paralib.ProcessError("Recipe " .. partName .. " expected to be table. But it is: " .. type(recipePart))
		return
	end
	if not recipePart.type then
		paralib.ProcessError(partName .. ".type not found!")
		return
	end
	if not recipePart.name then
		paralib.ProcessError(partName .. ".name not found!")
		return
	end
	if not recipePart.amount then
		paralib.ProcessError(partName .. ".amount not found!")
		return
	end
end

paralib.utils.IsTablesEqual = function(tbl1, tbl2)
	if type(tbl1) ~= "table" or type(tbl2) ~= "table" then
		return false
	end

	-- check that tbl1 ==> tbl2
	for k, v in pairs(tbl1) do
		if tbl2[k] == nil or type(v) ~= type(tbl2[k]) then
			return false
		end
		if type(v) == "table" and not paralib.utils.IsTablesEqual(v, tbl2[k]) then
			return false
		end
		if type(v) == "number" or type(v) == "string" or type(v) == "boolean" then
			if v ~= tbl2[k] then
				return false
			end
		end
	end

	-- check that tbl2 ==> tbl1
	for k, v in pairs(tbl2) do
		if tbl1[k] == nil or type(v) ~= type(tbl1[k]) then
			return false
		end
		if type(v) == "table" and not paralib.utils.IsTablesEqual(v, tbl1[k]) then
			return false
		end
		if type(v) == "number" or type(v) == "string" or type(v) == "boolean" then
			if v ~= tbl1[k] then
				return false
			end
		end
	end
	return true
end

---Check that given table is array
---@param tbl table
paralib.utils.IsArray = function(tbl)
	if type(tbl) ~= "table" then
		return false
	end
	if #tbl == 0 then
		return true
	end

	for i = 1, #tbl do
		if tbl[i] == nil then
			return false
		end
	end
	return true
end

paralib.EnsureIngredientExists = function(ingredient)
	paralib.utils.EnsureRecipePartExists("ingredient", ingredient)
end

paralib.EnsureResultExists = function(result)
	paralib.utils.EnsureRecipePartExists("result", result)
end

-- ---------------------------- --
-- TECHNOLOGY FUNCTION WRAPPERS --
-- ---------------------------- --
paralib.bobmods.lib.tech.add_prerequisite = function(techBase, techRequired)
	paralib.EnsureExists("technology", techBase)
	paralib.EnsureExists("technology", techRequired)
	bobmods.lib.tech.add_prerequisite(techBase, techRequired)
end
paralib.bobmods.lib.tech.replace_prerequisite = function(techBase, techOld, techNew)
	paralib.EnsureExists("technology", techBase)
	paralib.EnsureExists("technology", techOld)
	paralib.EnsureExists("technology", techNew)
	bobmods.lib.tech.replace_prerequisite(techBase, techOld, techNew)
end

paralib.bobmods.lib.tech.remove_prerequisite = function(techBase, techRequired)
	paralib.EnsureExists("technology", techBase)
	paralib.EnsureExists("technology", techRequired)
	if not data.raw.technology[techBase] then return end
	local prereqExists = false
	for _, prereq in ipairs(data.raw.technology[techBase].prerequisites) do
		if prereq == techRequired then
			prereqExists = true
			break
		end
	end
	if not prereqExists then
		paralib.ProcessError("Required technology: " .. techRequired .. " not in prerequisites of tech: " .. techBase)
		return
	end
	bobmods.lib.tech.remove_prerequisite(techBase, techRequired)
end

paralib.bobmods.lib.tech.add_recipe_unlock = function(tech, recipe)
	paralib.EnsureExists("technology", tech)
	paralib.EnsureExists("recipe", recipe)
	bobmods.lib.tech.add_recipe_unlock(tech, recipe)
end
paralib.bobmods.lib.tech.remove_recipe_unlock = function(tech, recipe)
	paralib.EnsureExists("technology", tech)
	paralib.EnsureExists("recipe", recipe)
	bobmods.lib.tech.add_recipe_unlock(tech, recipe)
end

paralib.bobmods.lib.tech.hide = function(tech)
	paralib.EnsureExists("technology", tech)
	bobmods.lib.tech.hide(tech)
end

paralib.bobmods.lib.tech.remove_science_pack = function(tech, pack)
	paralib.EnsureExists("technology", tech)
	paralib.EnsureExists("item", pack)
	bobmods.lib.tech.remove_science_pack(tech, pack)
end

paralib.bobmods.lib.tech.replace_science_pack = function(tech, packOld, packNew)
	paralib.EnsureExists("technology", tech)
	paralib.EnsureExists("item", packOld)
	paralib.EnsureExists("item", packNew)
	bobmods.lib.tech.replace_science_pack(tech, packOld, packNew)
end

-- ------------------------ --
-- RECIPE FUNCTION WRAPPERS --
-- ------------------------ --
paralib.bobmods.lib.recipe.enabled = function(recipe, bool)
	paralib.EnsureExists("recipe", recipe)
	bobmods.lib.recipe.enabled(recipe, bool)
end

paralib.bobmods.lib.recipe.set_result = function(recipe, result)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureResultExists(result)
	bobmods.lib.recipe.set_result(recipe, result)
end

paralib.bobmods.lib.recipe.add_result = function(recipe, result)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureResultExists(result)
	bobmods.lib.recipe.add_result(recipe, result)
end

paralib.bobmods.lib.recipe.remove_result = function(recipe, result)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureResultExists(result)
	bobmods.lib.recipe.remove_result(recipe, result)
end

paralib.bobmods.lib.recipe.clear_ingredients = function(recipe)
	paralib.EnsureExists("recipe", recipe)
	bobmods.lib.recipe.clear_ingredients(recipe)
end

paralib.bobmods.lib.recipe.add_ingredient = function(recipe, ingredient)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureIngredientExists(ingredient)
	bobmods.lib.recipe.add_ingredient(recipe, ingredient)
end

paralib.bobmods.lib.recipe.add_new_ingredient = function(recipe, ingredient)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureIngredientExists(ingredient)
	bobmods.lib.recipe.add_new_ingredient(recipe, ingredient)
end

paralib.bobmods.lib.recipe.remove_ingredient = function(recipe, ingredient)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureIngredientExists(ingredient)
	bobmods.lib.recipe.remove_ingredient(recipe, ingredient)
end

paralib.bobmods.lib.recipe.replace_ingredient = function(recipe, ingredientOld, ingredientNew)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureIngredientExists(ingredientOld)
	paralib.EnsureIngredientExists(ingredientNew)
	bobmods.lib.recipe.replace_ingredient(recipe, ingredientOld, ingredientNew)
end

paralib.bobmods.lib.recipe.set_ingredients = function(recipe, ingredients)
	paralib.EnsureExists("recipe", recipe)
	if not paralib.utils.IsArray(ingredients) then
		paralib.ProcessError("Ingredient expected to be array but it is not!")
	end
	for _, ingredient in ipairs(ingredients) do
		paralib.EnsureIngredientExists(ingredient)
	end
	bobmods.lib.recipe.set_ingredients(recipe, ingredients)
end

paralib.bobmods.lib.recipe.set_ingredient = function(recipe, ingredient)
	paralib.EnsureExists("recipe", recipe)
	paralib.EnsureIngredientExists(ingredient)
	bobmods.lib.recipe.set_ingredient(recipe, ingredient)
end

paralib.bobmods.lib.recipe.set_energy_required = function(recipe, time)
	paralib.EnsureExists("recipe", recipe)
	bobmods.lib.recipe.set_energy_required(recipe, time)
end
