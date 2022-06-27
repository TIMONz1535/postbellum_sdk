local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Упаковать медицинский кейс"
	RECIPE.description = "Медицинский кейс содержит медикаменты на все случаи жизни."
	RECIPE.model = "models/pb_upd/other/fmk.mdl"
	RECIPE.required = {
		{"empty_medchest"},
		{"health_vial", 2},
		{"bandage_sealed", 3},
		{"health_carbon", 1}
	}
	RECIPE.output = {
		{"medchest"}
	}
RECIPE:Register()