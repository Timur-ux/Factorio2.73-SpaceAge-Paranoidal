require("__zzzparanoidal__.paralib")


--фикс рецептов
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-7", { type = "item", name = "bob-copper-tungsten-alloy", amount = 2500})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-7", { type = "item", name = "bob-advanced-processing-unit", amount = 25})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-7", { type = "item", name = "anotherworld-structure-components", amount = 2})

paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-4", { type = "item", name = "bob-advanced-processing-unit", amount = 5})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-4", { type = "item", name = "bob-copper-tungsten-alloy", amount = 1000})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-4", { type = "item", name = "anotherworld-structure-components", amount = 5})

paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-8", { type = "item", name = "clowns-plate-magnesium", amount = 2500})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-8", { type = "item", name = "bob-advanced-processing-unit", amount = 50})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-8", { type = "item", name = "anotherworld-structure-components", amount = 5})

paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-5", { type = "item", name = "clowns-plate-magnesium", amount = 1000})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-5", { type = "item", name = "bob-advanced-processing-unit", amount = 50})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-5", { type = "item", name = "anotherworld-structure-components", amount = 10})

paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-9", { type = "item", name = "clowns-plate-depleted-uranium", amount = 2500})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-9", { type = "item", name = "bob-advanced-processing-unit", amount = 100})
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-9", { type = "item", name = "anotherworld-structure-components", amount = 10})

--фикс загрязнений
data.raw["assembling-machine"]["assembling-machine-7"].energy_source.emissions_per_minute = { pollution = 0.3 }
data.raw["assembling-machine"]["assembling-machine-8"].energy_source.emissions_per_minute = { pollution = 0.2 }
data.raw["assembling-machine"]["assembling-machine-9"].energy_source.emissions_per_minute = { pollution = 0.1 }
data.raw["assembling-machine"]["electronics-machine-4"].energy_source.emissions_per_minute = { pollution = 0.3 }
data.raw["assembling-machine"]["electronics-machine-5"].energy_source.emissions_per_minute = { pollution = 0.2 }

-- размажем ассемблеры по разным стадиям игры 
paralib.bobmods.lib.tech.add_prerequisite("automation-7", "space-science-pack")
paralib.bobmods.lib.tech.add_prerequisite("electronics-machine-4", "space-science-pack")
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-7", { type = "item", name = "space-science-pack", amount = 5})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-4", { type = "item", name = "space-science-pack", amount = 5})

paralib.bobmods.lib.tech.add_prerequisite("automation-8", "observation-satellite")
paralib.bobmods.lib.tech.add_prerequisite("electronics-machine-5", "observation-satellite")
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-8", { type = "item", name = "planetary-data", amount = 1})
paralib.bobmods.lib.recipe.add_ingredient("electronics-machine-5", { type = "item", name = "planetary-data", amount = 1})

paralib.bobmods.lib.tech.add_prerequisite("automation-9", "space-lab")
paralib.bobmods.lib.recipe.add_ingredient("assembling-machine-9", { type = "item", name = "station-science", amount = 1})
