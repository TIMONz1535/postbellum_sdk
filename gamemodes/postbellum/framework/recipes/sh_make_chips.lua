local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Приготовить чипсы"
RECIPE.category = "Еда"
RECIPE.description = "Обжаренные в масле картофельные чипсы, отличная закуска."
RECIPE.model = "models/uu_branded/bioshockinfinite/bag_of_hhips.mdl"
RECIPE.requiredProp = {
	"Кухонная плита",
	{
		"models/props_c17/furniturestove001a.mdl",
		"models/props_wasteland/kitchen_stove001a.mdl"
	}
}
RECIPE.required = {
	{"potato"},
	{"vegetable_oil"},
}
RECIPE.output = {
	{"uu_chips"}
}
RECIPE:Register()