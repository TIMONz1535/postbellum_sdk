local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Синий платок"
ITEM.plural = "Синий платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band4.mdl"
ITEM.weight = 0.2
ITEM.description = "Синий платок с изображенным на нем белым узором. Выглядит как кусок оторванный от старого покрывала, но вортигонтам нравится."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 4
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()