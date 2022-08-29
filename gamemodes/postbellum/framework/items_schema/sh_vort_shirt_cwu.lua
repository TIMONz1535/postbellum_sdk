local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Вортигонтская куртка ГСР"
ITEM.plural = "Вортигонтских курток ГСР"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_cwu.mdl"
ITEM.weight = 1
ITEM.description = "Раньше это была куртка какого-то сотрудника. Теперь это куртка вортигонта, растянутая и расшитая специально для вортигонта, имеет вырез на груди."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 3
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()