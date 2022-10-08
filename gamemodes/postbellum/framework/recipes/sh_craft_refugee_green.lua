local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Сшить куртку"
RECIPE.category = "Одежда"
RECIPE.description = "Самодельные зеленая куртка."
RECIPE.model = "models/tnb/items/shirt_citizen2.mdl"
RECIPE.required = {
	{"scrap_cloth", 5},
	{"spray_can"},
	{"sewing_kit"},
}
RECIPE.output = {
	{"cits_refugee_green"}
}
RECIPE.factions = {
	FACTION_INCOG,
	FACTION_REFUGEE,
	FACTION_REBEL,
	FACTION_REBELMEDIC,
	FACTION_REBELBOSS,
	FACTION_REBELJUG,
	FACTION_RAIDER,
	FACTION_SYNDICATE
}
RECIPE.reqAtts = {
	{"dex", 16},
	{"str", 8},
}

RECIPE:Register()
