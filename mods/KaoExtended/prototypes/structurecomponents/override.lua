local function replaceMachine()

  --KaoExtended.recipe.add_to_recipe("bi_recipe_giga_wooden_chest", {"basic-structure-components", 5})
  KaoExtended.recipe.add_to_recipe("warehouse-basic", {"basic-structure-components", 5})
  
  KaoExtended.recipe.add_to_recipe("factory-2", {"basic-structure-components", 50})
  KaoExtended.recipe.add_to_recipe("factory-2", {"factory-1", 2})
  KaoExtended.recipe.add_to_recipe("factory-3", {"intermediate-structure-components", 50})
  KaoExtended.recipe.add_to_recipe("factory-3", {"factory-2", 2})
    
  KaoExtended.recipe.add_to_recipe("salination-plant", {"intermediate-structure-components", 5})
  KaoExtended.recipe.add_to_recipe("salination-plant-2", {"advanced-structure-components", 5})
  KaoExtended.recipe.add_to_recipe("salination-plant-2", {"salination-plant", 2})
  KaoExtended.recipe.add_to_recipe("salination-plant-3", {"salination-plant-2", 2})
  
  KaoExtended.recipe.add_to_recipe("washing-plant-2", {"intermediate-structure-components", 3})
  
  KaoExtended.recipe.add_to_recipe("centrifuge", {"intermediate-structure-components", 3})
  KaoExtended.recipe.add_to_recipe("centrifuge-mk2", {"advanced-structure-components", 3})
  KaoExtended.recipe.add_to_recipe("centrifuge-mk3", {"advanced-structure-components", 10})

  KaoExtended.recipe.add_to_recipe("assembling-machine-2", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("assembling-machine-3", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("assembling-machine-4", {"intermediate-structure-components", 5})
  KaoExtended.recipe.add_to_recipe("assembling-machine-5", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("assembling-machine-6", {"advanced-structure-components", 10})

  KaoExtended.recipe.add_to_recipe("rocket-silo", {"assembling-machine-6", 100})
  
  KaoExtended.recipe.add_to_recipe("electronics-machine-1", {"basic-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("electronics-machine-2", {"intermediate-structure-components", 3})
  KaoExtended.recipe.add_to_recipe("electronics-machine-3", {"advanced-structure-components", 3})
  
  KaoExtended.recipe.add_to_recipe("electronics-machine-1", {"inserter", 4})
  KaoExtended.recipe.add_to_recipe("electronics-machine-2", {"long-handed-inserter", 4})
  KaoExtended.recipe.add_to_recipe("electronics-machine-3", {"turbo-inserter", 4})
  
  KaoExtended.recipe.add_to_recipe("oil-refinery", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("oil-refinery-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("oil-refinery-3", {"intermediate-structure-components", 8})
  KaoExtended.recipe.add_to_recipe("oil-refinery-4", {"advanced-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("chemical-plant", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("chemical-plant-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("chemical-plant-3", {"intermediate-structure-components", 8})
  KaoExtended.recipe.add_to_recipe("chemical-plant-4", {"advanced-structure-components", 2})

  KaoExtended.recipe.add_to_recipe("steel-furnace", {"stone-furnace", 2})
  KaoExtended.recipe.add_to_recipe("electric-furnace", {"steel-furnace", 2})
  
  KaoExtended.recipe.add_to_recipe("electric-furnace", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("electric-furnace-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("electric-furnace-3", {"advanced-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("electrolyser", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("electrolyser-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("electrolyser-3", {"intermediate-structure-components", 8})
  KaoExtended.recipe.add_to_recipe("electrolyser-4", {"advanced-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("electric-chemical-mixing-furnace", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("electric-chemical-mixing-furnace-2", {"advanced-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("electric-mixing-furnace", {"electric-chemical-furnace", 2})
  KaoExtended.recipe.add_to_recipe("electric-mixing-furnace", {"basic-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("electric-chemical-furnace", {"stone-chemical-furnace", 2})
  KaoExtended.recipe.add_to_recipe("electric-chemical-furnace", {"basic-structure-components", 2})
end
local function replaceMining()
  KaoExtended.recipe.add_to_recipe("bob-mining-drill-1", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("bob-mining-drill-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-mining-drill-3", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-mining-drill-4", {"anotherworld-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("bob-area-mining-drill-1", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("bob-area-mining-drill-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-area-mining-drill-3", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-area-mining-drill-4", {"anotherworld-structure-components", 2})
  
  KaoExtended.recipe.add_to_recipe("bob-pumpjack-1", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("bob-pumpjack-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-pumpjack-3", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-pumpjack-4", {"anotherworld-structure-components", 2})
end
local function replacePower()
  KaoExtended.recipe.add_to_recipe("steam-engine-2", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("steam-engine-3", {"intermediate-structure-components", 1})
  
  if data.raw["item"]["petroleum-generator"] then
    KaoExtended.recipe.add_to_recipe("petroleum-generator", {"steam-engine-3", 1})
    KaoExtended.recipe.add_to_recipe("petroleum-generator", {"advanced-structure-components", 1})
  end
  if data.raw["item"]["steam-turbine"] then
    KaoExtended.recipe.add_to_recipe("steam-turbine", {"advanced-structure-components", 3})
	KaoExtended.recipe.add_to_recipe("steam-turbine-2", {"advanced-structure-components", 5})
	KaoExtended.recipe.add_to_recipe("steam-turbine-3", {"anotherworld-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("nuclear-reactor", {"boiler-4", 1})
    KaoExtended.recipe.add_to_recipe("nuclear-reactor", {"advanced-structure-components", 10})
  end
  
  KaoExtended.recipe.add_to_recipe("solar-panel-small", {"basic-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("solar-panel", {"basic-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("solar-panel-large", {"basic-structure-components", 3})
  
  KaoExtended.recipe.add_to_recipe("solar-panel-small-2", {"intermediate-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("solar-panel-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("solar-panel-large-2", {"intermediate-structure-components", 3})
  
  KaoExtended.recipe.add_to_recipe("solar-panel-small-3", {"advanced-structure-components", 1})
  KaoExtended.recipe.add_to_recipe("solar-panel-3", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("solar-panel-large-3", {"advanced-structure-components", 3})
end

local function replaceAngelRefi()

    KaoExtended.recipe.add_to_recipe("thermal-extractor", {"basic-structure-components", 1})	
	
    KaoExtended.recipe.add_to_recipe("ore-crusher-2", {"intermediate-structure-components", 1})
	KaoExtended.recipe.add_to_recipe("ore-crusher-2", {"engine-unit", 2})
    KaoExtended.recipe.add_to_recipe("ore-crusher-3", {"advanced-structure-components", 2})
	KaoExtended.recipe.add_to_recipe("ore-crusher-3", {"electric-engine-unit", 2})
    
    KaoExtended.recipe.add_to_recipe("ore-sorting-facility-2", {"basic-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("ore-sorting-facility-3", {"intermediate-structure-components", 3})
    KaoExtended.recipe.add_to_recipe("ore-sorting-facility-4", {"advanced-structure-components", 4})
    
    KaoExtended.recipe.add_to_recipe("ore-floatation-cell", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("ore-floatation-cell-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("ore-floatation-cell-3", {"advanced-structure-components", 2})
    
    KaoExtended.recipe.add_to_recipe("ore-leaching-plant", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("ore-leaching-plant-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("ore-leaching-plant-3", {"advanced-structure-components", 2})
    
    KaoExtended.recipe.add_to_recipe("ore-refinery", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("ore-refinery-2", {"advanced-structure-components", 4})
    
    KaoExtended.recipe.add_to_recipe("filtration-unit", {"basic-structure-components", 4})
    KaoExtended.recipe.add_to_recipe("filtration-unit-2", {"intermediate-structure-components", 4})
    
    KaoExtended.recipe.add_to_recipe("crystallizer", {"basic-structure-components", 4})
    KaoExtended.recipe.add_to_recipe("crystallizer-2", {"intermediate-structure-components", 4})
    
    KaoExtended.recipe.add_to_recipe("hydro-plant", {"basic-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("hydro-plant-2", {"intermediate-structure-components", 2})
	KaoExtended.recipe.add_to_recipe("hydro-plant-3", {"advanced-structure-components", 2})
	
	KaoExtended.recipe.add_to_recipe("algae-farm-2", {"basic-structure-components", 5})
	KaoExtended.recipe.add_to_recipe("algae-farm-3", {"intermediate-structure-components", 5})
	
end

local function replaceAngelPetro()

    KaoExtended.recipe.add_to_recipe("angels-electrolyser", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("angels-electrolyser-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("angels-electrolyser-3", {"intermediate-structure-components", 8})
    KaoExtended.recipe.add_to_recipe("angels-electrolyser-4", {"advanced-structure-components", 2})
	
    KaoExtended.recipe.add_to_recipe("advanced-chemical-plant", {"intermediate-structure-components", 3})
    KaoExtended.recipe.add_to_recipe("advanced-chemical-plant-2", {"advanced-structure-components", 3})
	
    KaoExtended.recipe.add_to_recipe("gas-refinery-small", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("gas-refinery-small-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("gas-refinery-small-3", {"intermediate-structure-components", 8})
    KaoExtended.recipe.add_to_recipe("gas-refinery-small-4", {"advanced-structure-components", 2})	
	
    KaoExtended.recipe.add_to_recipe("gas-refinery", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("gas-refinery-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("gas-refinery-3", {"intermediate-structure-components", 10})
    KaoExtended.recipe.add_to_recipe("gas-refinery-4", {"advanced-structure-components", 5})
	
    KaoExtended.recipe.add_to_recipe("separator", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("separator-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("separator-3", {"intermediate-structure-components", 8})
    KaoExtended.recipe.add_to_recipe("separator-4", {"advanced-structure-components", 2})
	
    KaoExtended.recipe.add_to_recipe("steam-cracker", {"basic-structure-components", 1})
    KaoExtended.recipe.add_to_recipe("steam-cracker-2", {"intermediate-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("steam-cracker-3", {"intermediate-structure-components", 8})
    KaoExtended.recipe.add_to_recipe("steam-cracker-4", {"advanced-structure-components", 2})
	
    --KaoExtended.recipe.add_to_recipe("angels-storage-tank-3", {"basic-structure-components", 2})
    KaoExtended.recipe.add_to_recipe("angels-storage-tank-2", {"basic-structure-components", 4})
    KaoExtended.recipe.add_to_recipe("angels-storage-tank-1", {"intermediate-structure-components", 6})
	
end

local function replaceAngelMe()

    KaoExtended.recipe.add_to_recipe("blast-furnace", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("blast-furnace-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("blast-furnace-3", {"advanced-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("blast-furnace-4", {"advanced-structure-components", 10})
	
    KaoExtended.recipe.add_to_recipe("induction-furnace", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("induction-furnace-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("induction-furnace-3", {"advanced-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("induction-furnace-4", {"advanced-structure-components", 10})
	
    KaoExtended.recipe.add_to_recipe("casting-machine", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("casting-machine-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("casting-machine-3", {"advanced-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("casting-machine-4", {"advanced-structure-components", 10})
	
    KaoExtended.recipe.add_to_recipe("ore-processing-machine", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("ore-processing-machine-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("ore-processing-machine-3", {"advanced-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("ore-processing-machine-4", {"advanced-structure-components", 10})
	
    KaoExtended.recipe.add_to_recipe("pellet-press", {"basic-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("pellet-press-2", {"intermediate-structure-components", 5})
    KaoExtended.recipe.add_to_recipe("pellet-press-3", {"advanced-structure-components", 5})
end

local function replaceRobot()
  KaoExtended.recipe.add_to_recipe("bob-roboport-2", {"intermediate-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-roboport-3", {"advanced-structure-components", 2})
  KaoExtended.recipe.add_to_recipe("bob-roboport-4", {"anotherworld-structure-components", 1})
end

local function addtoRailloader()
  KaoExtended.recipe.add_to_recipe("railloader", {"miniloader", 8})
  KaoExtended.recipe.add_to_recipe("railunloader", {"miniloader", 8})
end

local function addtoPowerarmor()
  KaoExtended.recipe.add_to_recipe("bob-power-armor-mk3", {"space-science-pack", 100})
  KaoExtended.recipe.add_to_recipe("bob-power-armor-mk4", {"planetary-data", 1})
  KaoExtended.recipe.add_to_recipe("bob-power-armor-mk5", {"station-science", 1})
end

replaceMachine()
replaceMining()
replacePower()
replaceAngelRefi()
replaceAngelPetro()
replaceAngelMe()
replaceRobot()
addtoRailloader()
addtoPowerarmor()