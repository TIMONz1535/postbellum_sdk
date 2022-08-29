local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Поварской колпак"
ITEM.plural = "Поварских колпаков"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_cheafhat.mdl"
ITEM.weight = 0.2
ITEM.description = "Белый поварской колпак, почему-то идеально подходит только под голову вортигонта."
ITEM.wearBodyId = 2
ITEM.wearBodyState = 1
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()