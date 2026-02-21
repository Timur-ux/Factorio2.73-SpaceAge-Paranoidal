--#####################
--Удаление лишних рыб из сборки
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-1", "fish-keeping-0")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-1", "fish-keeping-1")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-1", "fish-keeping-2")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-2", "fish-breeding-0")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-2", "fish-breeding-1")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-fish-2", "fish-breeding-2")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-butchery-1", "fish-butchery-0")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-butchery-1", "fish-butchery-1")
bobmods.lib.tech.remove_recipe_unlock("bio-refugium-butchery-1", "fish-butchery-2")
bobmods.lib.tech.remove_recipe_unlock("bio-pressing-fish-1", "fish-pressing-0")
bobmods.lib.tech.remove_recipe_unlock("bio-pressing-fish-1", "fish-pressing-1")
bobmods.lib.tech.remove_recipe_unlock("bio-pressing-fish-1", "fish-pressing-2")


data.raw["recipe"]["fish-keeping-0"].hidden = true
data.raw["recipe"]["fish-keeping-1"].hidden = true
data.raw["recipe"]["fish-keeping-2"].hidden = true
data.raw["recipe"]["fish-breeding-0"].hidden = true
data.raw["recipe"]["fish-breeding-1"].hidden = true
data.raw["recipe"]["fish-breeding-2"].hidden = true
data.raw["recipe"]["fish-butchery-0"].hidden = true
data.raw["recipe"]["fish-butchery-1"].hidden = true
data.raw["recipe"]["fish-butchery-2"].hidden = true
data.raw["recipe"]["fish-pressing-0"].hidden = true
data.raw["recipe"]["fish-pressing-1"].hidden = true
data.raw["recipe"]["fish-pressing-2"].hidden = true
--#####################

