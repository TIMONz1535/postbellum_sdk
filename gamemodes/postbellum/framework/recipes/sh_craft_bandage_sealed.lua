local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Стерильный бинт"
	RECIPE.category = "Медикаменты"
	RECIPE.description = "Продезинфицированный бинт"
	RECIPE.skin = 1
	RECIPE.model = "models/pb_upd/medical/bandage.mdl"
	RECIPE.reqAtts = { 
		{"dex", 2},
		{"med", 4},
	}
	RECIPE.required = {
		{"bandage"},
		{
			{"vodka"},
			{"alcohol"},
		}
	}
	RECIPE.output = {
		{"bandage_sealed", 1}
	}
RECIPE:Register()
