local ITEM = Clockwork.item:New("cits_base");
ITEM.name = "Черное пончо";
ITEM.plural = "Черных пончо";
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_poncho.mdl"
ITEM.weight = 2;
ITEM.protection = 0.3;
ITEM.description = "Больше похоже на старую тряпку, которую замочили в черной краске, но Вортигонтам нравится.";
ITEM.wearBodyId = 5;
ITEM.wearBodyState = 8;
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register();