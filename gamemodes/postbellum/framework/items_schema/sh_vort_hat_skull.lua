local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Ритуальный череп"
ITEM.plural = "Ритуальных черепов"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_helmet.mdl"
ITEM.weight = 0.2
ITEM.description = "Ритуальный череп, невероятно редкий артефакт былых времен, высоко ценится среди вортигонтов. Мешает обзору, но довольно крепок и защищает голову."
ITEM.wearBodyId = 2
ITEM.wearBodyState = 3
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()