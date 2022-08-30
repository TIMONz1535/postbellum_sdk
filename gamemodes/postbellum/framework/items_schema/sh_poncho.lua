local ITEM = Clockwork.item:New("cits_base");
ITEM.name = "Пончо";
ITEM.plural = "Пончо";
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_poncho.mdl"
ITEM.weight = 2;
ITEM.protection = 0.2;
ITEM.description = "Больше похоже на старую тряпку, но Вортигонтам нравится.";
ITEM.wearBodyId = 5
ITEM.wearBodyState = 7
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register();