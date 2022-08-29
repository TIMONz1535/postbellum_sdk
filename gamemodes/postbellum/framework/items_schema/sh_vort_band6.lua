local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Черный платок"
ITEM.plural = "Черный платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band6.mdl"
ITEM.weight = 0.2
ITEM.description = "Черный платок. Кажется его просто уронили в костер, но вортигонтам нравится."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 6
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()