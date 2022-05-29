local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Монтировка"
	RECIPE.category = "Оружие"
	RECIPE.description = "Старая ржавая монтировка."
	RECIPE.model = "models/weapons/w_crowbar.mdl"
	RECIPE.required = {
		{"craft_rebar"},
		{"craft_scrap", 4, 3},
		{"craft_bar", 3},
	}
	RECIPE.output = {
		{"weapon_crowbar"}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_REFUGEE,
		FACTION_REBEL,
		FACTION_REBELMEDIC,
		FACTION_REBELBOSS,
		FACTION_REBELJUG,
		FACTION_RAIDER,
		FACTION_SYNDICATE,
		FACTION_CITIZEN,
	}
RECIPE:Register()
