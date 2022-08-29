local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Красный платок"
ITEM.plural = "Красный платок"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_band5.mdl"
ITEM.weight = 0.2
ITEM.description = "Обычный красный платок. Аккуратно пошит."
ITEM.wearBodyId = 3
ITEM.wearBodyState = 5
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()