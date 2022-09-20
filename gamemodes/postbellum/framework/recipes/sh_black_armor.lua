local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Черная броня"
RECIPE.category = "Одежда"
RECIPE.description = "Настолько крута, что ГО-шники падают замертво."
RECIPE.model = "models/tactical_rebel.mdl"
RECIPE.requiredProp = {"Верстак", "models/pb_upd/other/workbench.mdl"}
RECIPE.required = {
	{"cits_rebel_molle"},
	{"cits_rebel1_legs"},
	{"spray_can"},
	{"cits_beanie"},
	{"cits_gasmask"},
	{"craft_plate", 2},
	{"scrap_cloth", 5},
	{"sewing_kit"},
}
RECIPE.output = {
	{"uniform_black"}
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
	{"dex", 25}, -- ловкость рук
	{"str", 8} -- сила
}
RECIPE:Register()