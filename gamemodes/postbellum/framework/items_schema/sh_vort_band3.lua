local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Серобуромалиновый платок"
ITEM.plural = "Серобуромалиновый платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band3.mdl"
ITEM.weight = 0.2
ITEM.description = "Серобуромалиновый платок с узором и странным названием. Выглядит как кусок оборванной старой тряпки, но вортигонтам нравится."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 3
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()