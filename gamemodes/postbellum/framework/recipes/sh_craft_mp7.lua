local RECIPE = Clockwork.recipe:New()
RECIPE.name = "MP7"
RECIPE.category = "Оружие"
RECIPE.description = "Компактное оружие черной окраски. Имеет подствольный гранатомет."
RECIPE.model = "models/weapons/w_smg1.mdl"
RECIPE.requiredProp = {"Верстак", "models/pb_upd/other/workbench.mdl"}
RECIPE.required = {
	{"craft_smg1"},
	{"craft_nails", 3, 2},
	{"craft_scrap", 11, 10},
	{"craft_plate", 3},
	{"craft_bar", 2}
}
RECIPE.output = {
	{"weapon_smg1"}
}
RECIPE.factions = {
	FACTION_INCOG,
	FACTION_REBEL,
	FACTION_REBELMEDIC,
	FACTION_REBELBOSS,
	FACTION_REBELJUG,
	FACTION_RAIDER,
	FACTION_SYNDICATE
}
RECIPE:Register()
