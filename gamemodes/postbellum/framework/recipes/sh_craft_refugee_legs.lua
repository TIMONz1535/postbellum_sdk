local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Сшить штаны"
RECIPE.category = "Одежда"
RECIPE.description = "Самодельные штаны."
RECIPE.model = "models/tnb/items/pants_citizen.mdl"
RECIPE.required = {
	{"scrap_cloth", 5},
	{"sewing_kit"},
}
RECIPE.output = {
	{"cits_refugee_legs"}
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
