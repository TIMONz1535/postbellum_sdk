local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Черное пончо"
	RECIPE.category = "Одежда"
	RECIPE.description = "Окрашенное в черный цвет пончо"
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_poncho1.mdl"
	RECIPE.required = {
		{"poncho", 1},
		{"spray_can", 1}
	}
	RECIPE.output = {
		{"poncho_black", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
		FACTION_VORTSLAVE,
	}
RECIPE:Register()
