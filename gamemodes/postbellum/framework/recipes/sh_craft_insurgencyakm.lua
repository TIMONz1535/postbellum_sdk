local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "АКМ"
	RECIPE.category = "Оружие"
	RECIPE.description = "Автомат Калашникова с большой боевой мощью."
	RECIPE.model = "models/weapons/insurgency/w_akm.mdl"
	RECIPE.requiredEnt = "workbench"
	RECIPE.required = {
		{"craft_akm"},
		{"craft_nails", 4, 3},
		{"craft_scrap", 12, 11},
		{"craft_plate", 4},
		{"craft_bar", 4}
	}
	RECIPE.output = {
		{"weapon_insurgencyakm"}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_REBEL,
		FACTION_REBELMEDIC,
		FACTION_REBELBOSS,
		FACTION_REBELJUG,
		FACTION_RAIDER,
		FACTION_SYNDICATE,
	}
RECIPE:Register()