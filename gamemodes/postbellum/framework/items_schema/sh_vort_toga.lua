local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Тога"
ITEM.plural = "Тог"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_toga.mdl"
ITEM.weight = 2.5
ITEM.protection = 0.3
ITEM.description = "Очень большой кусок красной шерстяной тряпки в форме овала и дыркой по центру."
ITEM.wearBodyId = 5
ITEM.wearBodyState = 5
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()