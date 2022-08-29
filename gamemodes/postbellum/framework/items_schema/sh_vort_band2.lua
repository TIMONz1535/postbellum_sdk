local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Серый платок"
ITEM.plural = "Серый платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band2.mdl"
ITEM.weight = 0.2
ITEM.description = "Серый платок с белым узором. Выглядит как кусок оборванной старой тряпки, но вортигонтам нравится."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 2
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()