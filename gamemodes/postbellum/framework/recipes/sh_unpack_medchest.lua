local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Распаковать медицинский кейс"
	RECIPE.description = "Медицинский кейс содержит медикаменты на все случаи жизни."
	RECIPE.model = "models/pb_upd/other/fmk_empty.mdl"
	RECIPE.required = {
		{"medchest"}
	}
	RECIPE.output = {
		{"empty_medchest"},
		{"health_vial", 2},
		{"bandage_sealed", 3},
		{"health_carbon", 1}
	}
RECIPE:Register()
