-- Fetch external properties
local ofshore_pump_template = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])

-- base create
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

-- tweak params
local function CreateOffshorePump(pumpName, energySource, energyUsage, pumpingSpeed)
	local pump = data.raw["offshore-pump"][pumpName]
	pump.energy_source = energySource
	pump.energy_usage = energyUsage
	pump.pumping_speed = pumpingSpeed
end

local energySources = {
	burner = {
		type = "burner",
		fuel_categories = { "chemical" },
		effectivity = 1,
		fuel_inventory_size = 1,
		emissions_per_minute = { pollution = 9 },
	},
	electric = {
		type = "electric",
		usage_priority = "secondary-input",
		emissions_per_minute = { pollution = 1 },
	},
}

CreateOffshorePump("offshore-mk0-pump", energySources.burner, "900kW", 5)
CreateOffshorePump("offshore-mk1-pump", energySources.electric, "1200kW", 10)
CreateOffshorePump("offshore-mk2-pump", energySources.electric, "2000kW", 20)
CreateOffshorePump("offshore-mk3-pump", energySources.electric, "2800kW", 40)
CreateOffshorePump("offshore-mk4-pump", energySources.electric, "3700kW", 80)

-- recipies
-- mk1
bobmods.lib.recipe.set_ingredients("offshore-pump", {
	{ type = "item", name = "electronic-circuit", amount = 2 },
	{ type = "item", name = "pipe", amount = 5 },
	{ type = "item", name = "iron-gear-wheel", amount = 5 },
})
bobmods.lib.tech.add_recipe_unlock("electronics", "offshore-pump")

-- mk2
bobmods.lib.recipe.set_ingredients("offshore-mk2-pump", {
	{ type = "item", name = "bob-steel-pipe", amount = 5 },
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "bob-steel-gear-wheel", amount = 10 },
})
data.raw["technology"]["offshore-mk2-pump"].prerequisites = { "advanced-circuit", "bob-fluid-handling-2" }

--offshore-3
bobmods.lib.recipe.set_ingredients("offshore-mk3-pump", {
	{ type = "item", name = "bob-titanium-pipe", amount = 5 },
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "bob-titanium-gear-wheel", amount = 10 },
})
data.raw["technology"]["offshore-mk3-pump"].prerequisites =
	{ "offshore-mk2-pump", "advanced-circuit", "angels-titanium-smelting-1", "bob-fluid-handling-2" }
--offshore-4
bobmods.lib.recipe.set_ingredients("offshore-mk4-pump", {
	{ type = "item", name = "bob-titanium-pipe", amount = 5 },
	{ type = "item", name = "advanced-circuit", amount = 2 },
	{ type = "item", name = "bob-titanium-gear-wheel", amount = 10 },
})
data.raw["technology"]["offshore-mk4-pump"].prerequisites =
	{ "offshore-mk3-pump", "processing-unit", "bob-advanced-processing-unit" }
data.raw.technology["offshore-mk4-pump"].unit.ingredients = {
	{ type = "item", name = "automation-science-pack", amount = 1 },
	{ type = "item", name = "logistic-science-pack", amount = 1 },
	{ type = "item", name = "chemical-science-pack", amount = 1 },
	{ type = "item", name = "production-science-pack", amount = 1 },
}
