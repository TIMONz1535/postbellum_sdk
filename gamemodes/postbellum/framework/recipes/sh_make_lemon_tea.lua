local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Заварить чай с лимоном"
	RECIPE.category = "Еда"
	RECIPE.description = "Лучше обычного чая может быть только чай с лимоном."
	RECIPE.model = "models/uu_branded/probs_misc/tobbcco_box-1.mdl"
	RECIPE.required = {
		{"uu_tea"},
		{"lemon"},
		-- {
		-- 	{"breens_water", 3},
			{"water", 3},
		-- }
	}
	RECIPE.output = {
		{"lemon_tea_cup", 3}
	}
RECIPE:Register()
