local Assert = require("utils.assert")
local Binder = {}

-- add __index check to tbl
--
-- if tbl have no metatable mt will be set as is
-- else there will be created new metatable with
-- all metamethods (except __index) inherited
--
-- __index metamethod will be overwritted in order to
-- call in chain old __index metamethod(if it exists) and mt.__index later
--
-- allows multiple chain
--
-- mt must have __index or __newindex method
Binder.BindAccessMetatableInChain = function(tbl, mt)
	Assert(type(tbl) == "table", "Expected tbl to be table to bind new __index mt in chain")
	Assert(type(mt) == "table", "Expected mt as metatable but given: " .. type(mt))
	local mtMethods = {}
	if type(mt.__index) == "function" then
		mtMethods["__index"] = true
	end
	if type(mt.__newindex) == "function" then
		mtMethods["__newindex"] = true
	end

	Assert(table_size(mtMethods) > 0, "No  __index or __newindex metamethods found in mt")

	local mtChainId = "UniqueBindMetatableInChainIdentifieradjfvndksjnvlsdvsd"
	local mtChain = {}
	mtChain[mtChainId] = {}
	local oldMtTable = getmetatable(tbl)
	if oldMtTable and oldMtTable[mtChainId] then
		-- chain mt already exists, just add new mt
		table.insert(oldMtTable[mtChainId], mt)
		return
	elseif oldMtTable then
		-- chaining oldmt and mt
		mtChain[mtChainId] = { oldMtTable, mt }
	else
		-- only one mt
		mtChain[mtChainId] = { mt }
	end

	if oldMtTable then
		-- inherit other metamethods
		for key, value in pairs(oldMtTable) do
			if mtMethods[key] == nil then
				mtChain[key] = value
			end
		end
	end

	if mtMethods["__index"] then
		mtChain.__index = function(_table, key)
			local this = getmetatable(_table)
			for _, _mt in ipairs(this[mtChainId]) do
				local res = _mt.__index and _mt.__index(_table, key)
				if res then
					return res
				end
			end
		end
	end

	if mtMethods["__newindex"] then
		log("Updating __newindex")
		mtChain.__newindex = function(_table, key, value)
			local this = getmetatable(_table)
			for _, _mt in ipairs(this[mtChainId]) do
				local res = _mt.__newindex and _mt.__newindex(_table, key, value)
				if res then
					return res
				end
			end
		end
	end
	setmetatable(tbl, mtChain)
end

return Binder
