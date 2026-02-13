local Assert = require("__0zzzcompability__/utils/assert")
-- bobplates refers to bob-quartz in sand-processing's research_trigger which is replaced by angels-quartz
-- there i fix it

local function FixSandProcessing()
	Assert(data.raw and data.raw.technology, "Expected data.raw.technology but it is nil")

	local tech = data.raw.technology["sand-processing"]
	Assert(tech, "sand-processing technology to fix not found")
	Assert.AssertOutdated(type(tech.research_trigger) == "table", "tech.research_trigger not table")
	Assert.AssertOutdated(tech.research_trigger.entity == "bob-quartz", "Expected bob-quartz as trigger's entity")

	tech.research_trigger.entity = "angels-ore3"
end

FixSandProcessing()
