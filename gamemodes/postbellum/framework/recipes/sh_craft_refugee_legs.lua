local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Сшить штаны."
RECIPE.category = "Одежда"
RECIPE.description = "Самодельные зеленая куртка."
RECIPE.model = "models/tnb/items/pants_citizen.mdl"
RECIPE.required = {
	{"scrap_cloth", 5},
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

RECIPE:Register()