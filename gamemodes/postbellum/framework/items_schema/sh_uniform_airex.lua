local ITEM = Clockwork.item:New("uniform_base")
ITEM.name = "Броня AirEx"
ITEM.weight = 8
ITEM.protection = 0.6
ITEM.description = "Броня черного цвета. Сверху надето пальто AirEx с логотипом C18."
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
		return "models/humans/airex/airex_female.mdl"
	end
	return "models/humans/airex/airex_male.mdl"
end

ITEM:Register()
