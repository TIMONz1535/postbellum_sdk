local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Темная куртка вортигонта"
	RECIPE.category = "Одежда"
	RECIPE.description = "Темная куртка расшитая специально для вортигонта, выглядит очень лояльно."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_loyal.mdl"
	RECIPE.required = {
		{"cits_loyalist"},
		{"scrap_cloth", 2},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"vort_shirt_loyalist", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
	}
RECIPE:Register()