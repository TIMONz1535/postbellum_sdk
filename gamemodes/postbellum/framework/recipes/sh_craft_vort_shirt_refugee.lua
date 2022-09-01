local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Зеленая куртка вортигонта"
	RECIPE.category = "Одежда"
	RECIPE.description = "Обычная зеленая куртка, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_ref.mdl"
	RECIPE.required = {
		{"cits_refugee_green"},
		{"scrap_cloth", 2},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"vort_refugee_green", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
	}
RECIPE:Register()