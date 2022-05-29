local RECIPE = Clockwork.recipe:New();
	RECIPE.name = "Забодяженная водка"
	RECIPE.category = "Еда"
	RECIPE.description = "Бутылек со спиртосодержащей жидкостью, что-то вроде самогона."
	RECIPE.model = "models/teebeutel/metro/objects/bottle03.mdl"
	RECIPE.required = {
		{"alcohol"},
		{"water", 2},
	}
	RECIPE.output = {
		{"vodka", 1}
	}
RECIPE:Register()
