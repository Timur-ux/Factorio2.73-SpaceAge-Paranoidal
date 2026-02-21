--замена tile для concrete-brick
local concrete_brick_fix = table.deepcopy(data.raw["tile"]["refined-concrete"])
concrete_brick_fix.name = "concrete-brick-fix"
concrete_brick_fix.minable = { mining_time = 0.1, result = "angels-concrete-brick" }
concrete_brick_fix.layer = "225"
concrete_brick_fix.variants.material_background = {
	picture = "__zzzparanoidal__/graphics/grid/concrete.png",
	count = 8,
}
data:extend({ concrete_brick_fix })
data.raw["item"]["angels-concrete-brick"].place_as_tile.result = "concrete-brick-fix"
-------------------------------------------------------------------------------------------------
--замена tile для reinforced-concrete-brick
local reinforced_concrete_brick_fix = table.deepcopy(data.raw["tile"]["refined-concrete"])
reinforced_concrete_brick_fix.name = "reinforced-concrete-brick-fix"
reinforced_concrete_brick_fix.minable = { mining_time = 0.1, result = "reinforced-concrete-brick" }
reinforced_concrete_brick_fix.layer = "230"
reinforced_concrete_brick_fix.variants.material_background = {
	picture = "__zzzparanoidal__/graphics/smooth/concrete.png",
	count = 8,
}
data:extend({ reinforced_concrete_brick_fix })
data.raw["item"]["reinforced-concrete-brick"].place_as_tile.result = "reinforced-concrete-brick-fix"
-------------------------------------------------------------------------------------------------
--подмена графики стандартного кирпича
if settings.startup["stone-path-concrete"].value then
	local stone_variants = util.table.deepcopy(data.raw.tile["refined-concrete"].variants)
	stone_variants.material_background.picture = "__zzzparanoidal__/graphics/patches/concrete.png"
	data.raw.tile["stone-path"].variants = stone_variants
end
-------------------------------------------------------------------------------------------------
--замена текстуры для "бетон с разметкой опасности"
data.raw.tile["hazard-concrete-left"].variants.material_background.picture =
	"__zzzparanoidal__/graphics/grid/hazard-concrete-left.png"
data.raw.tile["hazard-concrete-right"].variants.material_background.picture =
	"__zzzparanoidal__/graphics/grid/hazard-concrete-right.png"
-------------------------------------------------------------------------------------------------

