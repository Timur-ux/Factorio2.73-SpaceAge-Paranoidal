-- Fetch external properties
local ofshore_pump_template = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])

local ofshore_mk0_template = table.deepcopy(ofshore_pump_template)
ofshore_mk0_template.name = "offshore-mk0-pump"
ofshore_mk0_template.minable = { mining_time = 1, result = "offshore-mk0-pump" }
data:extend({ ofshore_mk0_template })

local ofshore_mk2_template = table.deepcopy(ofshore_pump_template)
ofshore_mk2_template.name = "offshore-mk2-pump"
ofshore_mk2_template.minable = { mining_time = 1, result = "offshore-mk2-pump" }
data:extend({ ofshore_mk2_template })

local ofshore_mk3_template = table.deepcopy(ofshore_pump_template)
ofshore_mk3_template.name = "offshore-mk3-pump"
ofshore_mk3_template.minable = { mining_time = 1, result = "offshore-mk3-pump" }
data:extend({ ofshore_mk3_template })

local ofshore_mk4_template = table.deepcopy(ofshore_pump_template)
ofshore_mk4_template.name = "offshore-mk4-pump"
ofshore_mk4_template.minable = { mining_time = 1, result = "offshore-mk4-pump" }
data:extend({ ofshore_mk4_template })
