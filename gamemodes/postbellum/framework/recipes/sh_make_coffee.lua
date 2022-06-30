local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Заварить кофе"
	RECIPE.category = "Еда"
	RECIPE.description = "Вкусный бодрящий напиток."
	RECIPE.model = "models/uu_branded/bioshockinfinite/xoffee_mug_closed.mdl"
	RECIPE.required = {
		{"uu_coffee"},
		{
			{"breens_water", 3},
			{"water", 3},
		}
	}
	RECIPE.output = {
		{"uu_coffee_cup", 3}
	}
RECIPE:Register()