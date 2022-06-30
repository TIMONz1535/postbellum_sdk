local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Сшить перчатки"
RECIPE.category = "Одежда"
RECIPE.description = "Самодельные беспалые перчатки."
RECIPE.model = "models/tnb/items/gloves.mdl"
RECIPE.required = {
	{"scrap_cloth", 2},
	{"sewing_kit"},
}
RECIPE.output = {
	{"cits_gloves"}
}

RECIPE:Register()