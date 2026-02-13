local Assert = require("__0zzzcompability__/utils/assert")
local function FixTech()
	Assert(data.raw and data.raw.technology, "Expected data.raw.techonogy but it is nil")
	local targetTech = data.raw.technology["medium-electric-pole"]
	Assert.AssertOutdated(targetTech and targetTech.icon == nil, "If tech medium-electric-pole have valid icon field this fix not needed")

	targetTech.icon = "__base__/graphics/technology/electric-energy-distribution-1.png"
end

FixTech()
