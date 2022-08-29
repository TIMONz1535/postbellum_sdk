local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Медальон с кристаллом"
ITEM.plural = "Медальонов с кристаллами"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_zen_crystal_medallion2.mdl"
ITEM.weight = 0.3
ITEM.description = "Отколотый кусок синего кристалла, подвешенный на веревочку."
ITEM.wearBodyId = 4
ITEM.wearBodyState = 2
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()