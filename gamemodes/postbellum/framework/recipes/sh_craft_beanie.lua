local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Сшить шапку"
RECIPE.category = "Одежда"
RECIPE.description = "Самодельная шапка."
RECIPE.model = "models/tnb/items/gloves.mdl"
RECIPE.required = {
	{"scrap_cloth", 3},
	{"sewing_kit"},
}
RECIPE.output = {
	{"cits_beanie"}
}

RECIPE:Register()