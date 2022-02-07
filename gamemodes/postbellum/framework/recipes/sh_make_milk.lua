local RECIPE = Clockwork.recipe:New();
	RECIPE.name = "Разбавить сухое молоко"
	RECIPE.category = "Еда"
	RECIPE.description = "Большая бутыль с разбавленным сухим молоком."
	RECIPE.model = "models/props_junk/garbage_milkcarton001a.mdl"
	RECIPE.required = {
		{"large_soda_empty"},
		{"water", 2},
		{"canned_milk"},
	}
	RECIPE.output = {
		{"milk_jug", 1}
	}
RECIPE:Register()
