data:extend({
	{
		type = "recipe",
		name = "bob-module-contact",
		normal = {
			energy_required = 5,
			enabled = false,
			ingredients = {
				{ "bob-silver-plate", 1 },
				{ "bob-gold-plate", 1 },
			},
			results = { { type = "item", name = "bob-module-contact", amount = 2 } },
		},
		expensive = {
			energy_required = 6,
			enabled = false,
			ingredients = {
				{ "bob-silver-plate", 1 },
				{ "bob-gold-plate", 1 },
			},
			results = { { type = "item", name = "bob-module-contact", amount = 2 } },
		},
	},
})

--[[
OV.patch_recipes(      {        {
          name = "bob-module-contact",
          ingredients = {            {"!!"},
            {name = "copper-plate", amount = 1},
            {name = "bob-silver-plate", amount = 1},          }        },
]]
--
