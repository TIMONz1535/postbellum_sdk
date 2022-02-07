local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Бинт"
	RECIPE.category = "Медикаменты"
	RECIPE.description = "Изготовить бинт из обрывка ткани"
	RECIPE.model = "models/props_junk/watermelon01_chunk01c.mdl"
	RECIPE.required = {
		{"scrap_cloth", 1}
	}
	RECIPE.output = {
		{"bandage", 1}
	}
RECIPE:Register()