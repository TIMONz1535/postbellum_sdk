local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Лимонад"
	RECIPE.category = "Еда"
	RECIPE.description = "Газировка, смешанная с дольками лимона, и слегка разбавленная обычной водой."
	RECIPE.model = "models/props_interiors/pot01a.mdl"
	RECIPE.required = {
		{"lemon", 1},
		{"large_soda_empty", 2},
		{"smooth_breens_water", 2},
		-- {
		-- 	{"breens_water", 1},
			{"water", 1},
		-- }
	}
	RECIPE.output = {
		{"lemonade", 2}
	}
RECIPE:Register()
