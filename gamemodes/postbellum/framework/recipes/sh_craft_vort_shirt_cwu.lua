local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Вортигонтская куртка ГСР"
	RECIPE.category = "Одежда"
	RECIPE.description = "Раньше это была куртка какого-то сотрудника. Теперь это куртка вортигонта, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_cwu.mdl"
	RECIPE.required = {
		{"cits_cwu"},
		{"scrap_cloth", 2},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"vort_shirt_cwu", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
	}
RECIPE:Register()