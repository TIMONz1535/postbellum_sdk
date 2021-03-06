local ITEM = Clockwork.item:New("uniform_base")
ITEM.name = "Костюм химзащиты"
ITEM.model = "models/pb_upd/suit_cit/chim.mdl"
ITEM.weight = 6
ITEM.protection = 0.3
ITEM.description = "Защитный комбинезон для работы в опасных условиях."
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

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(isFemale)
	if isFemale then
		return "models/citizen_17_female.mdl"
	end
	return "models/citizen_17.mdl"
end

ITEM:Register()
