local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Распаковать медицинский кейс"
	RECIPE.description = "Медицинский кейс содержит медикаменты на все случаи жизни."
	RECIPE.model = "models/pb_upd/other/fmk.mdl"
	RECIPE.required = {
		{"medchest"}
	}
	RECIPE.output = {
		{"empty_medchest"},
		{"health_vial", 2},
		{"bandage", 3},
		{"health_carbon", 1}
	}
RECIPE:Register()