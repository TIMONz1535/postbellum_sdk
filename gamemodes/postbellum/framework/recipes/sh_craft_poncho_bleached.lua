local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Отбеленный пончо"
	RECIPE.category = "Одежда"
	RECIPE.description = "Отбеленный пончо, было черным, стало белым."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_poncho.mdl"
	RECIPE.required = {
		{"bleach", 1},
		{"poncho_black", 1},
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