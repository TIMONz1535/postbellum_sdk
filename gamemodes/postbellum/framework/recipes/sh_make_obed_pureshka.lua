local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Приготовить котлеты с картофельным пюре"
RECIPE.category = "Еда"
RECIPE.description = "Превосходный вкус этого блюда никого не оставит равнодушным"
RECIPE.model = "models/obed/pureshka.mdl"
RECIPE.requiredProp = {
	"Кухонная плита",
	{
		"models/props_c17/furniturestove001a.mdl",
		"models/props_wasteland/kitchen_stove001a.mdl"
	}
}
RECIPE.required = {
	{"potato", 2},
	{"obed_kotletka", 2}
}
RECIPE.output = {
	{"obed_pureshka", 1}
}
RECIPE:Register()
