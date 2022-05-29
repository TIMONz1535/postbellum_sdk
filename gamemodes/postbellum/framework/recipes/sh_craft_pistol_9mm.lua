local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Пистолет 9мм"
RECIPE.category = "Оружие"
RECIPE.description = "Небольшой пистолет, покрыт тускло-серой окраской."
RECIPE.model = "models/weapons/w_pistol.mdl"
RECIPE.requiredProp = {"Верстак", "models/pb_upd/other/workbench.mdl"}
RECIPE.required = {
	{"craft_pistol"},
	{"craft_nails"},
	{"craft_scrap", 10, 9},
	{"craft_plate", 3, 2},
	{"craft_bar"}
}
RECIPE.output = {
	{"weapon_pistol"}
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
