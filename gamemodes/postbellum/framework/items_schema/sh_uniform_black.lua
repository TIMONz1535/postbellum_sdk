local ITEM = Clockwork.item:New("uniform_base")
ITEM.name = "Черная броня Повстанцев"
ITEM.model = "models/pb_upd/suit_cit/blackarmore.mdl"
ITEM.weight = 8
ITEM.protection = 0.4
ITEM.description = "Броня черного цвета с металлическими пластинами."
ITEM.whitelist = {
	[FACTION_MPF] = true,
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
		return "models/tactical_rebel_female.mdl"
	end
	return "models/tactical_rebel.mdl"
end

ITEM:Register()
