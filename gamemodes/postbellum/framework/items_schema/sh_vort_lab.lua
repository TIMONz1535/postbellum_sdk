local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Большой лабораторный халат"
ITEM.plural = "Больших лабораторных халатов"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_lab.mdl"
ITEM.weight = 1.5
ITEM.description = "Пошитый специально для вортигонта белый лабораторный халат."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 6
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()