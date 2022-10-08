local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Отфильтрованная вода"
	RECIPE.category = "Еда"
	RECIPE.description = "Вода в банках хуже водопроводной. С помощью куска ткани и угля ее можно отфильтровать."
	RECIPE.model = "models/props_junk/PopCan01a.mdl"
	RECIPE.required = {
		{"health_carbon"},
		{"scrap_cloth", 1, 0},
		{"breens_water", 1}
	}
	RECIPE.output = {
		{"water", 1}
	}
RECIPE:Register()
