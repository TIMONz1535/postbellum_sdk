local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Синяя куртка вортигонта"
	RECIPE.category = "Одежда"
	RECIPE.description = "Обычная синяя куртка, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_cit.mdl"
	RECIPE.required = {
		{"cits_def"},
		{"scrap_cloth", 2},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"vort_shirt", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
	}
RECIPE:Register()