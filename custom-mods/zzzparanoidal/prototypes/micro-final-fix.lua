--data.raw["technology"]["xxx"].prerequisites = {"xxx", "xxx"}
--data.raw.technology["xxx"].hidden = true

--bobmods.lib.tech.add_recipe_unlock("technology", "recipe")
--bobmods.lib.tech.remove_recipe_unlock("technology", "recipe")

--bobmods.lib.tech.replace_prerequisite("technology", "old", "new")
--bobmods.lib.tech.add_prerequisite("technology", "prerequisite")
--bobmods.lib.tech.remove_prerequisite("technology", "prerequisite")

--bobmods.lib.recipe.add_ingredient("recipe", { type = "item", name = "ingredient", amount = 2})
--bobmods.lib.recipe.set_energy_required("recipe", 2)
--bobmods.lib.recipe.set_ingredient("recipe", { type = "item", name = "item", amount = 20})
--bobmods.lib.recipe.set_result("recipe", {name = "item", type = "item", amount = 5})

--###############################################################################################
--баланс мостовых рельс
if mods["beautiful_straight_bridge_railway"] then
	data.raw["rail-planner"]["bbr-rail-brick"].subgroup = "transport-rail"
	data.raw["rail-planner"]["bbr-rail-brick"].order = "d"
	data.raw["rail-planner"]["bbr-rail-brick"].icons =
		{ { icon = "__zzzparanoidal__/graphics/train/bbr-rail-brick-icon.png", size = 64, icon_mipmaps = 4 } }
	bobmods.lib.recipe.clear_ingredients("bbr-rail-brick")
	bobmods.lib.recipe.add_ingredient("bbr-rail-brick", { type = "item", name = "iron-stick", amount = 2})
	bobmods.lib.recipe.add_ingredient("bbr-rail-brick", { type = "item", name = "concrete", amount = 20})
	bobmods.lib.recipe.add_ingredient("bbr-rail-brick", { type = "item", name = "steel-plate", amount = 2})
	bobmods.lib.recipe.add_ingredient("bbr-rail-brick", { type = "item", name = "stone-crushed", amount = 10})
	bobmods.lib.recipe.set_energy_required("bbr-rail-brick", 2)
end
--###############################################################################################
--будет вшито в биоиндустрию
--дробление камня в ангеловских дробилках руды
data.raw["assembling-machine"]["angels-burner-ore-crusher"].crafting_categories = { "ore-refining-t1", "biofarm-mod-crushing" }
data.raw["assembling-machine"]["angels-ore-crusher"].crafting_categories = { "ore-refining-t1", "biofarm-mod-crushing" }
data.raw["assembling-machine"]["angels-ore-crusher-2"].crafting_categories =
	{ "ore-refining-t1", "biofarm-mod-crushing" }
data.raw["assembling-machine"]["angels-ore-crusher-3"].crafting_categories =
	{ "ore-refining-t1", "biofarm-mod-crushing" }
data.raw["assembling-machine"]["ore-crusher-4"].crafting_categories = { "ore-refining-t1", "biofarm-mod-crushing" }
--коксование в доменке
data.raw["assembling-machine"]["angels-blast-furnace"].crafting_categories =
	{ "blast-smelting", "biofarm-mod-smelting" }
data.raw["assembling-machine"]["angels-blast-furnace-2"].crafting_categories =
	{ "blast-smelting", "blast-smelting-2", "biofarm-mod-smelting" }
data.raw["assembling-machine"]["angels-blast-furnace-3"].crafting_categories =
	{ "blast-smelting", "blast-smelting-2", "blast-smelting-3", "biofarm-mod-smelting" }
data.raw["assembling-machine"]["angels-blast-furnace-4"].crafting_categories =
	{ "blast-smelting", "blast-smelting-2", "blast-smelting-3", "blast-smelting-4", "biofarm-mod-smelting" }

----------------SEO fix----------------


--Баланс водных насосов
-- data.raw["assembling-machine"]["water-pumpjack-1"].energy_usage = "600kW"
-- data.raw["assembling-machine"]["water-pumpjack-2"].energy_usage = "1000kW"
-- data.raw["assembling-machine"]["water-pumpjack-3"].energy_usage = "1350kW"
-- data.raw["assembling-machine"]["water-pumpjack-4"].energy_usage = "1700kW"
-- data.raw["assembling-machine"]["water-pumpjack-5"].energy_usage = "2100kW"

-- data.raw["assembling-machine"]["water-pumpjack-1"].crafting_speed = 0.2
-- data.raw["assembling-machine"]["water-pumpjack-2"].crafting_speed = 0.4
-- data.raw["assembling-machine"]["water-pumpjack-3"].crafting_speed = 0.6
-- data.raw["assembling-machine"]["water-pumpjack-4"].crafting_speed = 0.8
-- data.raw["assembling-machine"]["water-pumpjack-5"].crafting_speed = 1

--Баланс агрегатора росы
data.raw["assembling-machine"]["dpa"].energy_usage = "1000kW"

--Синие фильтрующие манипуляторы встают на место
data.raw.technology["filter-inserters"].hidden = true
bobmods.lib.tech.add_recipe_unlock("express-inserters", "filter-inserter")

bobmods.lib.recipe.set_ingredient("landfill", { type = "item", name = "stone", amount = 50}) --Отсыпка по 50


-- Seems like already fixed
--фикс стрелок порта для сероводорода промывочных машин
data.raw["assembling-machine"]["washing-plant"].fluid_boxes[4].pipe_connections[1].type = "output"
data.raw["assembling-machine"]["washing-plant-2"].fluid_boxes[4].pipe_connections[1].type = "output"



--###############################################################################################
--Фикс снайперских турелей
data.raw["ammo-turret"]["bob-sniper-turret-1"].attack_parameters.min_range = 15
data.raw["ammo-turret"]["bob-sniper-turret-1"].attack_parameters.cooldown = 300
data.raw["ammo-turret"]["bob-sniper-turret-2"].attack_parameters.min_range = 17
data.raw["ammo-turret"]["bob-sniper-turret-2"].attack_parameters.cooldown = 240
data.raw["ammo-turret"]["bob-sniper-turret-3"].attack_parameters.min_range = 20
data.raw["ammo-turret"]["bob-sniper-turret-3"].attack_parameters.cooldown = 210
bobmods.lib.recipe.set_ingredients(
	"bob-sniper-turret-1",
	{ { type = "item", name = "bob-steel-gear-wheel", amount = 20}, { type = "item", name = "gun-turret", amount = 1}, { type = "item", name = "copper-plate", amount = 20} }
)
--###############################################################################################
--Фикс легкихтурелей
data.raw["ammo-turret"]["scattergun-turret"].attack_parameters.range = 18
data.raw["ammo-turret"]["scattergun-turret"].attack_parameters.damage_modifier = 2.0
data.raw["ammo-turret"]["scattergun-turret"].attack_parameters.min_range = 0
data.raw["ammo-turret"]["scattergun-turret"].attack_parameters.turn_range = 1
bobmods.lib.recipe.set_ingredients(
	"scattergun-turret",
	{ { type = "item", name = "iron-gear-wheel", amount = 20}, { type = "item", name = "gun-turret", amount = 1}, { type = "item", name = "stone-brick", amount = 50} }
)
--###############################################################################################
--Фикс простых турелей
data.raw["ammo-turret"]["gun-turret"].attack_parameters.damage_modifier = 1.5
data.raw["ammo-turret"]["bob-gun-turret-2"].attack_parameters.damage_modifier = 2.0
data.raw["ammo-turret"]["bob-gun-turret-3"].attack_parameters.damage_modifier = 3.0
data.raw["ammo-turret"]["bob-gun-turret-4"].attack_parameters.damage_modifier = 4.0
data.raw["ammo-turret"]["bob-gun-turret-5"].attack_parameters.damage_modifier = 5.0
--###############################################################################################
--Фикс модульных турелей
data.raw["ammo-turret"]["w93-hmg-turret"].attack_parameters.turn_range = 1
data.raw["ammo-turret"]["w93-hmg-turret"].attack_parameters.damage_modifier = 3.0
data.raw["ammo-turret"]["w93-hmg-turret"].attack_parameters.cooldown = 5
data.raw["ammo-turret"]["w93-hmg-turret2"].attack_parameters.damage_modifier = 4.0
data.raw["ammo-turret"]["w93-hmg-turret2"].attack_parameters.cooldown = 5

data.raw["technology"]["w93-modular-turrets2"].prerequisites = { "w93-modular-turrets", "electric-engine", "plastics" }
data.raw.technology["w93-modular-turrets2"].unit.ingredients =
	{ { type = "item", name = "automation-science-pack", amount = 1}, { type = "item", name = "logistic-science-pack", amount = 1}, { type = "item", name = "military-science-pack", amount = 1} }
bobmods.lib.tech.remove_recipe_unlock("w93-modular-turrets", "w93-hmg-turret2")
bobmods.lib.tech.add_recipe_unlock("w93-modular-turrets2", "w93-hmg-turret2")
bobmods.lib.tech.add_prerequisite("w93-modular-turrets-gatling", "w93-modular-turrets2")
bobmods.lib.tech.add_prerequisite("w93-modular-turrets-lcannon", "w93-modular-turrets2")
bobmods.lib.tech.add_prerequisite("w93-modular-turrets-rocket", "w93-modular-turrets2")
bobmods.lib.tech.add_prerequisite("w93-modular-turrets-plaser", "w93-modular-turrets2")

data.raw["ammo-turret"]["w93-gatling-turret"].attack_parameters.turn_range = 1
data.raw["ammo-turret"]["w93-gatling-turret"].attack_parameters.damage_modifier = 3.0
data.raw["ammo-turret"]["w93-gatling-turret"].attack_parameters.cooldown = 1
data.raw["ammo-turret"]["w93-gatling-turret2"].attack_parameters.turn_range = 0.5
data.raw["ammo-turret"]["w93-gatling-turret2"].attack_parameters.min_range = 0
data.raw["ammo-turret"]["w93-gatling-turret2"].attack_parameters.damage_modifier = 4.0
data.raw["ammo-turret"]["w93-gatling-turret2"].attack_parameters.cooldown = 1

data.raw["ammo-turret"]["w93-lcannon-turret"].attack_parameters.turn_range = 0.4
data.raw["ammo-turret"]["w93-lcannon-turret"].attack_parameters.range = 40
data.raw["ammo-turret"]["w93-lcannon-turret2"].attack_parameters.turn_range = 0.5
data.raw["ammo-turret"]["w93-lcannon-turret2"].attack_parameters.cooldown = 60
data.raw["ammo-turret"]["w93-lcannon-turret2"].attack_parameters.range = 45

data.raw["ammo-turret"]["w93-dcannon-turret"].attack_parameters.turn_range = 0.4
data.raw["ammo-turret"]["w93-dcannon-turret"].attack_parameters.cooldown = 60
data.raw["ammo-turret"]["w93-dcannon-turret"].attack_parameters.range = 50
data.raw["ammo-turret"]["w93-dcannon-turret"].attack_parameters.min_range = 25
data.raw["ammo-turret"]["w93-dcannon-turret2"].attack_parameters.turn_range = 0.5
data.raw["ammo-turret"]["w93-dcannon-turret2"].attack_parameters.cooldown = 30
data.raw["ammo-turret"]["w93-dcannon-turret2"].attack_parameters.range = 55
data.raw["ammo-turret"]["w93-dcannon-turret2"].attack_parameters.min_range = 32

data.raw["ammo-turret"]["w93-hcannon-turret"].attack_parameters.turn_range = 0.4
data.raw["ammo-turret"]["w93-hcannon-turret2"].attack_parameters.turn_range = 0.5
data.raw["ammo-turret"]["w93-hcannon-turret"].attack_parameters.damage_modifier = 3.0
data.raw["ammo-turret"]["w93-hcannon-turret2"].attack_parameters.min_range = 40
data.raw["ammo-turret"]["w93-hcannon-turret2"].attack_parameters.damage_modifier = 4.0
data.raw["ammo-turret"]["w93-hcannon-turret2"].attack_parameters.cooldown = 120

data.raw["electric-turret"]["w93-plaser-turret"].attack_parameters.turn_range = 0.4
data.raw["electric-turret"]["w93-plaser-turret"].attack_parameters.damage_modifier = 4.5
data.raw["electric-turret"]["w93-plaser-turret2"].attack_parameters.turn_range = 0.5
data.raw["electric-turret"]["w93-plaser-turret2"].attack_parameters.damage_modifier = 5.5
data.raw["electric-turret"]["w93-plaser-turret2"].attack_parameters.cooldown = 12

data.raw["electric-turret"]["w93-tlaser-turret"].attack_parameters.turn_range = 0.4
data.raw["electric-turret"]["w93-tlaser-turret2"].attack_parameters.turn_range = 0.5
data.raw["electric-turret"]["w93-tlaser-turret2"].attack_parameters.range = 65

data.raw["electric-turret"]["w93-beam-turret"].attack_parameters.turn_range = 0.4
data.raw["electric-turret"]["w93-beam-turret"].attack_parameters.damage_modifier = 2.0
data.raw["electric-turret"]["w93-beam-turret"].attack_parameters.range = 40
data.raw["electric-turret"]["w93-beam-turret2"].attack_parameters.turn_range = 0.5
data.raw["electric-turret"]["w93-beam-turret2"].attack_parameters.cooldown = 10

data.raw["ammo-turret"]["w93-rocket-turret"].attack_parameters.turn_range = 0.4
data.raw["ammo-turret"]["w93-rocket-turret"].attack_parameters.cooldown = 120
data.raw["ammo-turret"]["w93-rocket-turret"].attack_parameters.range = 80
data.raw["ammo-turret"]["w93-rocket-turret2"].attack_parameters.turn_range = 0.5
data.raw["ammo-turret"]["w93-rocket-turret2"].attack_parameters.cooldown = 60
data.raw["ammo-turret"]["w93-rocket-turret2"].attack_parameters.range = 95
data.raw["ammo-turret"]["w93-rocket-turret2"].attack_parameters.min_range = 55

--###############################################################################################
--Фикс злых снайперов из Big Monsters
for i = 1, 10 do
	local sniper_name = "tc_fake_human_sniper_" .. i
	if data.raw["unit"][sniper_name] then
		data.raw["unit"][sniper_name].attack_parameters.range = 60
		data.raw["unit"][sniper_name].attack_parameters.min_range = 55
	end
end
--###############################################################################################
--Финальный Ремонт дерева исследований
bobmods.lib.tech.remove_prerequisite("radar", "electronics") --фикс радара
-- bobmods.lib.tech.add_prerequisite ("radar", "bob-electricity") --фикс радара
bobmods.lib.recipe.set_ingredients(
	"radar",
	{ { type = "item", name = "electric-motor", amount = 12}, { type = "item", name = "bob-basic-circuit-board", amount = 20}, { type = "item", name = "stone-brick", amount = 20}, { type = "item", name = "iron-plate", amount = 20} }
) --фикс радара
bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "centrifuging-1") --ториевая энергетика под Продвинутое центрифугирование 1
bobmods.lib.tech.add_prerequisite("bob-area-drills-2", "bob-drills-2") --фикс буров
bobmods.lib.tech.add_prerequisite("bob-area-drills-3", "bob-drills-3") --фикс буров
bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-area-drills-3") --фикс буров
bobmods.lib.tech.add_prerequisite("bob-battery-3", "powder-metallurgy-5") --Аккумулятор 3 поставить под Порошковая металлургия 4
bobmods.lib.tech.remove_recipe_unlock("bob-advanced-processing-unit", "intelligent-io") -- Интеллектуальное арифметико-логическое устройство под Квантовые модули 1
bobmods.lib.tech.add_recipe_unlock("god-module-1", "intelligent-io") -- Интеллектуальное арифметико-логическое устройство под Квантовые модули 1
bobmods.lib.tech.remove_recipe_unlock("bi-tech-resin-extraction", "bi-resin-pulp") --прячем лишнюю смолу
bobmods.lib.tech.remove_recipe_unlock("bi-tech-resin-extraction", "bi-wood-from-pulp") --прячем лишнюю смолу
data.raw.technology["bi-tech-resin-extraction"].hidden = true --прячем лишнюю смолу
bobmods.lib.tech.add_prerequisite("hiend_train", "bob-fluid-wagon-3") -- привязать магнитный локомотив и вагоны к вагонам и цистернам мк3
bobmods.lib.tech.add_prerequisite("water-chemistry-2", "bob-thorium-fuel-reprocessing") -- привязатьо дейтериевую энергетику к Переработки тория (нет ядерного катализатора)
bobmods.lib.tech.add_prerequisite("extremely-advanced-rocket-payloads", "space-lab") -- Привязать КОсмический челнок к Космическая лаборатория (Данные с космической станции недоступны)
bobmods.lib.recipe.add_ingredient("offshore-pump", { type = "item", name = "offshore-mk0-pump", amount = 2}) -- к Электрический береговой насос добавляем Твердотопливный береговой насос 2 штуки

--###############################################################################################
--Финальный Ремонт дерева исследований от ЮШРАКА прости Господи
bobmods.lib.tech.add_prerequisite("physical-projectile-damage-2", "logistic-science-pack")
bobmods.lib.tech.add_prerequisite("physical-projectile-damage-3", "military-science-pack")
bobmods.lib.tech.add_prerequisite("physical-projectile-damage-6", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("stronger-explosives-4", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("refined-flammables-4", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("energy-weapons-damage-4", "chemical-science-pack")
bobmods.lib.tech.add_prerequisite("energy-weapons-damage-5", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("laser-shooting-speed-5", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("follower-robot-count-5", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("inserter-capacity-bonus-5", "bob-advanced-logistic-science-pack")
bobmods.lib.tech.add_prerequisite("inserter-capacity-bonus-7", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("logistic-science-pack", "logistics")
bobmods.lib.tech.add_prerequisite("steel-processing", "electric-mining")
bobmods.lib.tech.add_prerequisite("logistics", "electronics")
bobmods.lib.tech.add_prerequisite("chemical-science-pack", "engine")
bobmods.lib.tech.add_prerequisite("military-science-pack", "gun-turret")
bobmods.lib.tech.add_prerequisite("production-science-pack", "electric-engine")
bobmods.lib.tech.add_prerequisite("utility-science-pack", "nuclear-power")
bobmods.lib.tech.add_prerequisite("utility-science-pack", "logistics-3")
bobmods.lib.tech.add_prerequisite("advanced-circuit", "angels-sulfur-processing-2")
bobmods.lib.tech.add_prerequisite("braking-force-3", "bob-advanced-logistic-science-pack")
bobmods.lib.tech.add_prerequisite("braking-force-6", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("logistics-3", "bob-titanium-processing")
bobmods.lib.tech.add_prerequisite("research-speed-5", "production-science-pack")
bobmods.lib.tech.add_prerequisite("research-speed-6", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("electric-energy-distribution-2", "concrete")
bobmods.lib.tech.add_prerequisite("effect-transmission", "concrete")
bobmods.lib.tech.add_prerequisite("electric-engine", "engine")
bobmods.lib.tech.add_prerequisite("worker-robots-speed-3", "bob-advanced-logistic-science-pack")
bobmods.lib.tech.add_prerequisite("worker-robots-speed-5", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("worker-robots-storage-2", "bob-advanced-logistic-science-pack")
bobmods.lib.tech.add_prerequisite("worker-robots-storage-3", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("energy-shield-equipment", "electric-engine")
bobmods.lib.tech.add_prerequisite("battery-equipment", "electric-engine")
bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment", "bob-solar-panel-equipment-4")
bobmods.lib.tech.add_prerequisite("personal-roboport-equipment", "processing-unit")
bobmods.lib.tech.add_prerequisite("mining-productivity-3", "production-science-pack")
bobmods.lib.tech.add_prerequisite("mining-productivity-3", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("autonomous-space-mining-drones", "bob-drills-4")
bobmods.lib.tech.add_prerequisite("robot-attrition-explosion-safety", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("bob-nitinol-processing", "utility-science-pack")
bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "fast-inserter")
bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "space-science-pack")
bobmods.lib.tech.add_prerequisite("miniloader", "angels-steel-smelting-1")
bobmods.lib.tech.add_prerequisite("fast-miniloader", "fast-inserter")
bobmods.lib.tech.add_prerequisite("express-miniloader", "express-inserters")
bobmods.lib.tech.add_prerequisite("turbo-miniloader", "bob-turbo-inserter")
bobmods.lib.tech.add_prerequisite("ultimate-miniloader", "bob-ultimate-inserter")
bobmods.lib.tech.add_prerequisite("angels-advanced-ore-refining-3", "bob-titanium-processing")
bobmods.lib.tech.add_prerequisite("angels-advanced-ore-refining-4", "bob-advanced-processing-unit")
bobmods.lib.tech.add_prerequisite("speed-module-7", "bob-advanced-processing-unit")
bobmods.lib.tech.add_prerequisite("effectivity-module-7", "bob-advanced-processing-unit")
bobmods.lib.tech.add_prerequisite("productivity-module-7", "bob-advanced-processing-unit")
bobmods.lib.tech.add_prerequisite("pollution-clean-module-7", "bob-advanced-processing-unit")
bobmods.lib.tech.add_prerequisite("pollution-create-module-7", "bob-advanced-processing-unit")
--###############################################################################################
--Последние правки Space X
data.raw["assembling-machine"]["space-telescope-uplink-station"].icon =
	"__expanded-rocket-payloads-continued__/graphic/space-telescope-uplink-station-32.png" --фикс неправильной иконки
data.raw["recipe"]["osmium-ore-processing"].category = "ore-processing-4" --фикс слишком легкого осмия
data.raw["recipe"]["osmium-processed-processing"].category = "pellet-pressing-4" --фикс слишком легкого осмия
data.raw["recipe"]["osmium-pellet-smelting"].category = "blast-smelting-4" --фикс слишком легкого осмия
data.raw["recipe"]["casting-powder-osmium"].category = "powder-mixing-4" --фикс слишком легкого осмия
bobmods.lib.tech.add_prerequisite("astrometrics", "advanced-osmium-smelting") --Астрометрика под осмий
bobmods.lib.tech.add_recipe_unlock("bi-tech-stone-crushing-1", "stone-crushed-2") --открываем рецепт камня
data.raw["rocket-silo"]["rocket-silo"].energy_usage = "250000kW" --увеличиваем потребление энергии ракетной шахтой
data.raw["rocket-silo"]["rocket-silo"].module_specification.module_slots = 6 --но добавляем ей больше слотов модулей
bobmods.lib.tech.add_prerequisite("advanced-osmium-smelting", "ore-processing-5") --фикс дерева осмия
bobmods.lib.tech.add_prerequisite("advanced-osmium-smelting", "powder-metallurgy-5") --фикс дерева осмия
bobmods.lib.tech.remove_prerequisite("spidertron", "radars-1") --фикс паукатрона
--###############################################################################################
--Баланс телепортера под параноидал
bobmods.lib.recipe.set_ingredients("teleporter", {
	{ type = "item", name = "raw-speed-module-8", amount = 2},
	{ type = "item", name = "space-science-pack", amount = 50},
	{ type = "item", name = "bob-advanced-processing-unit", amount = 50},
	{ type = "item", name = "low-density-structure", amount = 150},
	{ type = "item", name = "bob-silver-zinc-battery", amount = 100},
	{ type = "item", name = "bob-nitinol-alloy", amount = 150},
})
data.raw.technology["teleporter"].unit.ingredients = {
	{ type = "item", name = "automation-science-pack", amount = 1},
	{ type = "item", name = "logistic-science-pack", amount = 1},
	{ type = "item", name = "military-science-pack", amount = 1},
	{ type = "item", name = "chemical-science-pack", amount = 1},
	{ type = "item", name = "bob-advanced-logistic-science-pack", amount = 1},
	{ type = "item", name = "production-science-pack", amount = 1},
	{ type = "item", name = "utility-science-pack", amount = 1},
	{ type = "item", name = "space-science-pack", amount = 1},
}
data.raw.technology["teleporter"].unit.count = 2000
bobmods.lib.tech.add_prerequisite("teleporter", "space-science-pack")
--###############################################################################################
-- попытка исправить ошибку с отсутсвием насоса на старте
data.raw.container["crash-site-spaceship"].minable = {
	mining_time = 5,
	results = {
		--{name="iron-plate", amount = 114},
		--{name="copper-plate", amount = 56},
		{ name = "steel-plate", amount_min = 5, amount_max = 25 },
		{ name = "iron-gear-wheel", amount_min = 5, amount_max = 20 },
		{ name = "electronic-circuit", amount_min = 4, amount_max = 12 },
		{ name = "concrete", amount_min = 25, amount_max = 85 },
		{ name = "pipe", amount_min = 5, amount_max = 45 },
		{ name = "bob-aluminium-plate", amount_min = 5, amount_max = 85 },
		{ name = "bob-titanium-plate", amount_min = 5, amount_max = 85 },
		{ name = "condensator3", amount_min = 5, amount_max = 35 },
		{ name = "bob-processing-electronics", amount_min = 1, amount_max = 5 },
		{ name = "bob-insulated-cable", amount_min = 11, amount_max = 39 },
		{ name = "salvaged-generator", amount = 1 },
		{ name = "offshore-mk0-pump", amount = 1 },
	},
}
--###############################################################################################
--новый биоконтент МК2 и МК3
bobmods.lib.tech.add_recipe_unlock("bi-tech-bio-farming-3", "bi-bio-farm-2") --открываем рецепт биофермы 2
bobmods.lib.tech.add_recipe_unlock("bi-tech-bio-farming-3", "bi-bio-greenhouse-2") --открываем рецепт теплицы 2
bobmods.lib.tech.add_recipe_unlock("bi-tech-bio-farming-4", "bi-bio-farm-3") --открываем рецепт биофермы 3
bobmods.lib.tech.add_recipe_unlock("bi-tech-bio-farming-4", "bi-bio-greenhouse-3") --открываем рецепт теплицы 3
data.raw["recipe"]["bi-logs-3"].category = "biofarm-mod-farm-2" -- Прячем рецепты под новую ферму 2
data.raw["recipe"]["bi-logs-4"].category = "biofarm-mod-farm-3" -- Прячем рецепты под новую ферму 3
data.raw["recipe"]["bi-seed-3"].category = "biofarm-mod-greenhouse-2" -- Прячем рецепты под новую теплицу 2
data.raw["recipe"]["bi-seedling-3"].category = "biofarm-mod-greenhouse-2" -- Прячем рецепты под новую теплицу 2
data.raw["recipe"]["bi-seed-4"].category = "biofarm-mod-greenhouse-3" -- Прячем рецепты под новую теплицу 3
data.raw["recipe"]["bi-seedling-4"].category = "biofarm-mod-greenhouse-3" -- Прячем рецепты под новую теплицу 3
data.raw["assembling-machine"]["bi-bio-reactor"].energy_usage = "200kW" --увеличиваем потребление биореактора мк 1
data.raw["assembling-machine"]["bi-bio-reactor"].module_specification.module_slots = 1 -- 1 слот модулей для мк1
bobmods.lib.recipe.set_ingredients(
	"bi-bio-reactor",
	{ { type = "item", name = "assembling-machine-1", amount = 2}, { type = "item", name = "steel-plate", amount = 20}, { type = "item", name = "bob-basic-circuit-board", amount = 5} }
) --баланс рецепта биореактора 1
bobmods.lib.tech.add_recipe_unlock("bi-tech-biomass-reprocessing-1", "bi-bio-reactor-2") --открываем рецепт биореактора 2
bobmods.lib.tech.add_recipe_unlock("bi-tech-biomass-reprocessing-2", "bi-bio-reactor-3") --открываем рецепт биореактора 3
data.raw["recipe"]["bi-biomass-2"].category = "biofarm-mod-bioreactor-2" -- Прячем рецепты под новый биореактор 2
data.raw["recipe"]["bi-biomass-3"].category = "biofarm-mod-bioreactor-3" -- Прячем рецепты под новый биореактор 2
bobmods.lib.tech.add_prerequisite("bi-tech-bio-farming-3", "concrete") -- Технологии под Бетон
--###############################################################################################
--фикс локализации рулонов
data.raw["recipe"]["angels-roll-tungsten-casting"].localised_name = { "recipe-name.tungsten-casting" }
data.raw["recipe"]["angels-roll-tungsten-casting-fast"].localised_name = { "recipe-name.tungsten-casting" }
data.raw["recipe"]["angels-roll-bronze-casting"].localised_name = { "recipe-name.bronze-casting" }
data.raw["recipe"]["angels-roll-bronze-casting-fast"].localised_name = { "recipe-name.bronze-casting" }
data.raw["recipe"]["angels-roll-brass-casting"].localised_name = { "recipe-name.brass-casting" }
data.raw["recipe"]["angels-roll-bronze-casting-fast"].localised_name = { "recipe-name.brass-casting" }
data.raw["recipe"]["angels-roll-invar-casting"].localised_name = { "recipe-name.invar-casting" }
data.raw["recipe"]["angels-roll-invar-casting-fast"].localised_name = { "recipe-name.invar-casting" }
data.raw["recipe"]["angels-roll-nitinol-casting"].localised_name = { "recipe-name.nitinol-casting" }
data.raw["recipe"]["angels-roll-nitinol-casting-fast"].localised_name = { "recipe-name.nitinol-casting" }
data.raw["recipe"]["angels-roll-cobalt-steel-casting"].localised_name = { "recipe-name.cobalt-steel-casting" }
data.raw["recipe"]["angels-roll-cobalt-steel-casting-fast"].localised_name = { "recipe-name.cobalt-steel-casting" }
data.raw["recipe"]["angels-roll-gunmetal-casting"].localised_name = { "recipe-name.gunmetal-casting" }
data.raw["recipe"]["angels-roll-gunmetal-casting-fast"].localised_name = { "recipe-name.gunmetal-casting" }

data.raw["item"]["angels-roll-tungsten"].localised_name =
	data.raw["recipe"]["angels-roll-tungsten-casting"].localised_name
data.raw["item"]["angels-roll-brass"].localised_name = data.raw["recipe"]["angels-roll-brass-casting"].localised_name
data.raw["item"]["angels-roll-bronze"].localised_name = data.raw["recipe"]["angels-roll-bronze-casting"].localised_name
data.raw["item"]["angels-roll-cobalt-steel"].localised_name =
	data.raw["recipe"]["angels-roll-cobalt-steel-casting"].localised_name
data.raw["item"]["angels-roll-gunmetal"].localised_name =
	data.raw["recipe"]["angels-roll-gunmetal-casting"].localised_name
data.raw["item"]["angels-roll-invar"].localised_name = data.raw["recipe"]["angels-roll-invar-casting"].localised_name
data.raw["item"]["angels-roll-nitinol"].localised_name =
	data.raw["recipe"]["angels-roll-nitinol-casting"].localised_name
--###############################################################################################
--фикс расположения робоспота для транспорта
data.raw["item"]["vehicle-roboport-3"].subgroup = "vehicle-misc1"
data.raw["item"]["vehicle-roboport-4"].subgroup = "vehicle-misc1"
data.raw["item"]["vehicle-roboport-3"].order = "v[vehicle-equipment]-f[roboport-3]"
data.raw["item"]["vehicle-roboport-4"].order = "v[vehicle-equipment]-f[roboport-4]"
--###############################################################################################
--прячем лишнюю жидкость
data.raw["fluid"]["angels-liquid-boric-acid"].hidden = true
data.raw["recipe"]["fill-liquid-boric-acid-barrel"].hidden = true
data.raw["recipe"]["empty-liquid-boric-acid-barrel"].hidden = true
--###############################################################################################
