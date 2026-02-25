require("__zzzparanoidal__.paralib")
--#####################
--Удаление лишних рыб из сборки
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-1", "angels-fish-keeping-0")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-1", "angels-fish-keeping-1")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-1", "angels-fish-keeping-2")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-2", "angels-alien-fish-0-raw")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-2", "angels-alien-fish-1-raw")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-fish-2", "angels-alien-fish-2-raw")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-butchery-1", "angels-fish-butchery-0")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-butchery-1", "angels-fish-butchery-1")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-refugium-butchery-1", "angels-fish-butchery-2")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-pressing-fish-1", "angels-fish-pressing-0")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-pressing-fish-1", "angels-fish-pressing-1")
paralib.bobmods.lib.tech.remove_recipe_unlock("angels-bio-pressing-fish-1", "angels-fish-pressing-2")


data.raw["recipe"]["angels-fish-keeping-0"].hidden = true
data.raw["recipe"]["angels-fish-keeping-1"].hidden = true
data.raw["recipe"]["angels-fish-keeping-2"].hidden = true
data.raw["recipe"]["angels-alien-fish-0-raw"].hidden = true
data.raw["recipe"]["angels-alien-fish-1-raw"].hidden = true
data.raw["recipe"]["angels-alien-fish-2-raw"].hidden = true
data.raw["recipe"]["angels-fish-butchery-0"].hidden = true
data.raw["recipe"]["angels-fish-butchery-1"].hidden = true
data.raw["recipe"]["angels-fish-butchery-2"].hidden = true
data.raw["recipe"]["angels-fish-pressing-0"].hidden = true
data.raw["recipe"]["angels-fish-pressing-1"].hidden = true
data.raw["recipe"]["angels-fish-pressing-2"].hidden = true
--#####################

