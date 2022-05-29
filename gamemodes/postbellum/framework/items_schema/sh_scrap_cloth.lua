local ITEM = Clockwork.item:New();
ITEM.name = "Обрывок ткани";
ITEM.plural = "Обрывков ткани";
ITEM.spawnType = "consumable";
ITEM.spawnValue = 1;
ITEM.model = "models/pb_upd/other/rags.mdl";
ITEM.weight = 0.2;
ITEM.description = "Кусок грубо разорванной ткани.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
