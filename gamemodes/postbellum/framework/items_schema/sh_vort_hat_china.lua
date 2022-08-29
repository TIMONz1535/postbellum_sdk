local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Соломенная шляпа"
ITEM.plural = "Соломенных шляп"
ITEM.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_chinahat.mdl"
ITEM.weight = 0.2
ITEM.description = "Соломенная шляпа, спасает от солнечных лучей. Внутренняя форма шляпы, подходит исключительно под голову вортигонта."
ITEM.wearBodyId = 2
ITEM.wearBodyState = 2
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

ITEM:Register()