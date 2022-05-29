local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Забодяженная газировка"
	RECIPE.category = "Еда"
	RECIPE.description = "Газировку можно немного разбавить водой, никто не заметит."
	RECIPE.model = "models/props_interiors/pot01a.mdl"
	RECIPE.required = {
		{"smooth_breens_water", 2},
		{"breens_water"},
		{"large_soda_empty", 2}
	}
	RECIPE.output = {
		{"large_soda", 2}
	}
RECIPE:Register()
