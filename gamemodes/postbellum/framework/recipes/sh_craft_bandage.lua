local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Бинт"
	RECIPE.category = "Медикаменты"
	RECIPE.description = "Изготовить бинт из обрывка ткани"
	RECIPE.model = "models/pb_upd/medical/bandage.mdl"
	RECIPE.required = {
		{"scrap_cloth", 1}
	}
	RECIPE.output = {
		{"bandage", 1}
	}
RECIPE:Register()
