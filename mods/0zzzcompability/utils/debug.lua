local Assert = require("utils.assert")
local Binder = require("utils.binder")
-- there debug functions and calls
-- used for debug only

-- local function TrapWhenTrySetNil(parent, tbl, trap_field)
-- 	local privateStorage = parent[tbl]
-- 	parent[tbl] = {}
-- 	local mt = {
-- 		__newindex = function (tbl, key, value)
-- 				Assert(key ~= trap_field or value ~= nil, "Attempt to set nil in watched key: " .. key)
-- 				privateStorage[key] = value
-- 		end,
-- 		__index = function (tbl, key)
-- 			return privateStorage[key]
-- 		end
-- 	}
-- 	Binder.BindAccessMetatableInChain(parent[tbl], mt)
-- end
--
-- TrapWhenTrySetNil(data.raw, "item", "firearm-magazine")
