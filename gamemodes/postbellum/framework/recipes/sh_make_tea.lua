local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Заварить чай"
	RECIPE.category = "Еда"
	RECIPE.description = "Что может быть лучше чая?"
	RECIPE.model = "models/probs_misc/tobbcco_box-1.mdl"
	RECIPE.required = {
		{"uu_tea"},
		{"water", 3}
	}
	RECIPE.output = {
		{"uu_tea_cup", 3}
	}
RECIPE:Register()