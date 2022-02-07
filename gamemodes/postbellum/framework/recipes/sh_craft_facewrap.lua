local RECIPE = Clockwork.recipe:New();
	RECIPE.name = "Сшить бандану"
	RECIPE.category = "Одежда"
	RECIPE.description = "Самодельная бандана на лицо."
	RECIPE.model = "models/tnb/items/facewrap.mdl"
	RECIPE.required = {
		{"scrap_cloth", 2},
		{"sewing_kit"},
	}
	RECIPE.output = {
		{"cits_facewrap", 1}
	}
RECIPE:Register()
