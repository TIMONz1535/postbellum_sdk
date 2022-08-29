local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Зеленая куртка вортигонта"
ITEM.plural = "Зеленых курток вортигонтов"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_ref.mdl"
ITEM.weight = 1
ITEM.description = "Обычная зеленая куртка, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 2
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()