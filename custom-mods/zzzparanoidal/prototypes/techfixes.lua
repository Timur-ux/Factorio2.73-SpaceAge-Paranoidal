require("__zzzparanoidal__.paralib")
--включим пластик без электролизиров
paralib.bobmods.lib.tech.remove_prerequisite("plastics", "bob-electrolysis-2")

--фикс атомной бомбы
paralib.bobmods.lib.tech.remove_prerequisite("atomic-bomb", "kovarex-enrichment-process")

--фикс атомной артилерии
paralib.bobmods.lib.tech.add_prerequisite("bob-atomic-artillery-shell", "atomic-bomb")
paralib.bobmods.lib.tech.remove_prerequisite("bob-atomic-artillery-shell", "kovarex-enrichment-process")
paralib.bobmods.lib.tech.remove_recipe_unlock("atomic-bomb", "bob-atomic-artillery-shell")

--фикс плазменных ракет
paralib.bobmods.lib.tech.remove_prerequisite("bob-plasma-rocket", "rocket" )
paralib.bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "rocketry")

--убираем лишние рецепты
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-1", "bob-stone-chemical-furnace-from-stone-furnace")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-chemical-processing-1", "bob-stone-furnace-from-stone-chemical-furnace")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-alloy-processing", "bob-stone-mixing-furnace-from-stone-furnace")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-alloy-processing", "bob-stone-furnace-from-stone-mixing-furnace")


--разные фиксы зависимостей технологий
--paralib.bobmods.lib.tech.add_prerequisite("angels-metallurgy-1", "steel-processing")

--убираем конвертацию между твёрдотопливными и жидкотопливными бойлерами
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-boiler-2", "bob-boiler-2-from-oil-boiler")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-boiler-3", "bob-boiler-3-from-oil-boiler-2")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-boiler-4", "bob-boiler-4-from-oil-boiler-3")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-boiler-5", "bob-boiler-5-from-oil-boiler-4")

paralib.bobmods.lib.tech.remove_recipe_unlock("bob-oil-boiler-2", "bob-oil-boiler-2-from-boiler-3")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-oil-boiler-3", "bob-oil-boiler-3-from-boiler-4")
paralib.bobmods.lib.tech.remove_recipe_unlock("bob-oil-boiler-4", "bob-oil-boiler-4-from-boiler-5")

--скрываем имбалансную технологию боба
data.raw.technology["bob-robot-plasma-drones"].hidden = true

--разблокируем рецепт для упрощенной плавки бронзы в печах
paralib.bobmods.lib.tech.add_recipe_unlock("angels-bronze-smelting-1", "bob-bronze-alloy")
