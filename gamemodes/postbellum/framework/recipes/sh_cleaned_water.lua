local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Нейтрализованная вода"
	RECIPE.category = "Еда"
	RECIPE.description = "Вода в банках хуже водопроводной. С помощью этой добавки она становиться вкуснее."
	RECIPE.model = "models/props_junk/PopCan01a.mdl"
	RECIPE.required = {
		{"craft_bcaa"},
		{"breens_water", 10}
	}
	RECIPE.output = {
		{"water", 10}
	}
RECIPE:Register()
