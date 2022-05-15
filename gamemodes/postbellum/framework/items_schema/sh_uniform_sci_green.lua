local ITEM = Clockwork.item:New("uniform_base")
ITEM.name = "Защитный комбинезон Ученого Green"
-- ITEM.model = "models/pb_upd/suit_cit/chim.mdl"
ITEM.group_adv = "borealisworkers"
ITEM.weight = 6
ITEM.protection = 0.4
ITEM.description = "Защитный комбинезон повышенной прочности зеленого цвета для работы в опасных условиях."
ITEM.whitelist = {
	[FACTION_MPF] = true,
	[FACTION_CITIZEN] = true,
	[FACTION_SCIENT] = true,
	[FACTION_CWU] = true,
	[FACTION_CWUMEDIC] = true,
	[FACTION_CWUBOSS] = true,
	[FACTION_GOO] = true,
	[FACTION_ADMIN] = true,
	[FACTION_REBEL] = true,
	[FACTION_REBELMEDIC] = true,
	[FACTION_REBELBOSS] = true,
	[FACTION_SYNDICATE] = true,
	[FACTION_REFUGEE] = true,
	[FACTION_RAIDER] = true,
	[FACTION_INCOG] = true
}

ITEM.bodyGroups = {[1] = 1}

ITEM:Register()
