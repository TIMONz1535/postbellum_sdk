local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Стерильный бинт"
	RECIPE.category = "Медикаменты"
	RECIPE.description = "Продезинфицировать бинт"
	RECIPE.skin = 1
	RECIPE.model = "models/pb_upd/medical/bandage.mdl"
	RECIPE.required = {
		{"bandage"},
		{"alcohol"},
	}
	RECIPE.output = {
		{"bandage_sealed", 1}
	}
RECIPE:Register()