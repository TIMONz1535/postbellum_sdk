local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Пончо"
	RECIPE.category = "Одежда"
	RECIPE.description = "Сшить пончо из кусочков ткани"
	RECIPE.model = "models/props_c17/suitcase_passenger_physics.mdl"
	RECIPE.required = {
		{"scrap_cloth", 6},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"poncho", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
		FACTION_VORTSLAVE,
	}
RECIPE:Register()
