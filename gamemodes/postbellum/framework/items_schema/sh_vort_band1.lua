local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Красный платок"
ITEM.plural = "Красный платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band1.mdl"
ITEM.weight = 0.2
ITEM.description = "Красный платок в клеточку. Выглядит как кусок оборванной старой тряпки, но вортигонтам нравится."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 1
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()