local Assert = require("utils.assert")
local Binder = require("utils.binder")
local AngelsPetrochemNameMap = require("raw.migrationData.angelspetrochem")

local MapTables = { AngelsPetrochemNameMap }

-- True Nukes requires plutonium-239 from Clowns Nuclear which requires
-- plutonium-239 from angelspetrochem where it renamed to angels-plutonium-239
-- so i add custom remapping for this key AND OTHER IF FOUND (see full change table in AngelsPetrochemNameMap)
local function FixWarheads()
	Assert(data.raw ~= nil, "Expected data.raw but it is nil")
	local types = { "item" }
	for _, _type in ipairs(types) do
		Assert.AssertOutdated(
			data.raw[_type] ~= nil,
			"Expected data.raw[" .. _type .. "] section to patch but it is nil."
		)
		Binder.BindAccessMetatableInChain(data.raw[_type], {
			__index = function(tbl, key)
				for _, nameMap in ipairs(MapTables) do
					Assert(
						type(nameMap[_type]) == "table",
						"In given name map no mapping entry for type: " .. _type
					)
					local value = nameMap[_type][key]
					if value then
						return tbl[value]
					end
				end
			end,
		})
	end
end

FixWarheads()
