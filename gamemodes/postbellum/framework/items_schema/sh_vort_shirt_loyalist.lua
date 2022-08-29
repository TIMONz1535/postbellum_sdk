local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Темная куртка вортигонта"
ITEM.plural = "Темных курток вортигонтов"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_loyal.mdl"
ITEM.weight = 1
ITEM.description = "Темная куртка расшитая специально для вортигонта, выглядит очень лояльно."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 4
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()