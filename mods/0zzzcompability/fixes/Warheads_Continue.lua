local Assert = require("utils.assert")
local Binder = require("utils.binder")
local BobwarfareNameMap = require("raw.migrationData.bobwarfare")
local SchallNameMap = require("raw.migrationData.SchallTankPlatoon")

local MapTables = { BobwarfareNameMap, SchallNameMap }

-- Warheads_Continue + bobwarfare fix / + SchallTankPlatoon fix
-- Warheads attemts to read data.raw.(ammo/projectile)["some-key"]
--
-- Bobwarfare: bobwarfare migrates to "bob-some-key" so it return nil and error later
-- there i try to add prefix bob- on access if it not there yet
--
--
-- SchallTankPlatoon: Situation the same as with bobwarfare
local function FixWarheads()
	Assert(data.raw ~= nil, "Expected data.raw but it is nil")
	local types = { "ammo", "projectile" }
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
