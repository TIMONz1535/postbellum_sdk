
-----------------------------------------------------
local ITEM = Clockwork.item:New();
ITEM.name = "Чай в пакетиках";
ITEM.plural = "Чая в пакетиках";
ITEM.model = "models/uu_branded/probs_misc/tobbcco_box-1.mdl";
ITEM.weight = 0.5;
ITEM.category = "Продукты";
ITEM.description = "Коробочка с чайными пакетиками.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();