local ITEM = Clockwork.item:New("cits_base");
ITEM.name = "Хитиновый доспех";
ITEM.plural = "Хитиновых доспехов";
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_diy_armor.mdl"
ITEM.weight = 5;
ITEM.protection = 0.5;
ITEM.description = "Самодельная броня. Очень тяжелая, стесняющая движения, но, невероятно крепкая. Состоит из скрепленных между собой хитиновых панцирей. Собрана умелым вортигонтом.";
ITEM.wearBodyId = 5;
ITEM.wearBodyState = 9;
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register();