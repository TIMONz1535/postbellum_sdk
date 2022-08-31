local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Тога"
	RECIPE.category = "Одежда"
	RECIPE.description = "Очень большой кусок тряпки в форме овала и дыркой по центру."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_toga.mdl"
	RECIPE.required = {
		{"scrap_cloth", 12},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"vort_toga", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
		FACTION_VORTSLAVE,
	}
RECIPE:Register()