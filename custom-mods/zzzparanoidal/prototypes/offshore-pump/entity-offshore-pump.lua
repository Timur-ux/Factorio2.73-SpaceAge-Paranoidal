-- ##############################
--------Burner PUMP

local offshore_mk0_pump = data.raw["offshore-pump"]["offshore-mk0-pump"]
offshore_mk0_pump.flags = offshore_mk0_pump.flags or {}

table.insert(offshore_mk0_pump.flags, "hide-alt-info")
offshore_mk0_pump.energy_source = {
	type = "burner",
	fuel_categories = { "chemical" },
	effectivity = 1,
	fuel_inventory_size = 1,
	emissions_per_minute = { pollution = 9 },
}
offshore_mk0_pump.energy_usage = "900kW"

-- ##############################
--------MK 1
local offshore_pump = data.raw["offshore-pump"]["offshore-pump"]
offshore_pump.flags = offshore_pump.flags or {}
table.insert(offshore_pump.flags, "hide-alt-info")
offshore_pump.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = { pollution = 1 },
}
offshore_pump.energy_usage = "1200kW"

-- ##############################
-----MK2

local offshore_pump_mk2 = data.raw["offshore-pump"]["offshore-mk2-pump"]
offshore_pump_mk2.flags = offshore_pump_mk2.flags or {}
table.insert(offshore_pump_mk2.flags, "hide-alt-info")
offshore_pump_mk2.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = { pollution = 1 },
}
offshore_pump_mk2.energy_usage = "2000kW"

-- ##############################
-----MK3

local offshore_pump_mk3 = data.raw["offshore-pump"]["offshore-mk3-pump"]
offshore_pump_mk3.flags = offshore_pump_mk3.flags or {}
table.insert(offshore_pump_mk3.flags, "hide-alt-info")
offshore_pump_mk3.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = { pollution = 1 },
}
offshore_pump_mk3.energy_usage = "2000kW"

-- ##############################
-----MK4

local offshore_pump_mk4 = data.raw["offshore-pump"]["offshore-mk4-pump"]
offshore_pump_mk4.flags = offshore_pump_mk4.flags or {}
table.insert(offshore_pump_mk4.flags, "hide-alt-info")
offshore_pump_mk4.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = { pollution = 1 },
}
offshore_pump_mk4.energy_usage = "2000kW"
