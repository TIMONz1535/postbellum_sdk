local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Синяя куртка вортигонта"
ITEM.plural = "Синих курток вортигонтов"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_cit.mdl"
ITEM.weight = 1
ITEM.description = "Обычная синяя куртка, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 1
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()