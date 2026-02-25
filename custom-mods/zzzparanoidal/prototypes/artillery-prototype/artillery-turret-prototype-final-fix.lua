require("__zzzparanoidal__.paralib")
--добавляем к рецепту базовой артиллерии прототип.
paralib.bobmods.lib.recipe.add_ingredient("artillery-turret", { type = "item", name = "artillery-turret-prototype", amount = 2})
-------------------------------------------------------------------------------------------------
--привязываем базовую артиллерию к новому прототипу
paralib.bobmods.lib.tech.add_prerequisite("artillery", "artillery-prototype")
--удаляем лишние зависимости
paralib.bobmods.lib.tech.remove_prerequisite("artillery", "bi-tech-bio-cannon")
