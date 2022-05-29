local RECIPE = Clockwork.recipe:New()
RECIPE.name = "Дробовик"
RECIPE.category = "Оружие"
RECIPE.description = "Оружие среднего размера с большой боевой мощью. Стреляет дробью."
RECIPE.model = "models/weapons/w_shotgun.mdl"
RECIPE.requiredProp = {"Верстак", "models/pb_upd/other/workbench.mdl"}
RECIPE.required = {
	{"craft_shotgun"},
	{"craft_nails", 4},
	{"craft_scrap", 11, 10},
	{"craft_plate", 3},
	{"craft_bar", 3, 2}
}
RECIPE.output = {
	{"weapon_shotgun"}
}
RECIPE.factions = {
	FACTION_INCOG,
	FACTION_REBEL,
	FACTION_REBELMEDIC,
	FACTION_REBELBOSS,
	FACTION_REBELJUG,
	FACTION_SYNDICATE
}
RECIPE:Register()
