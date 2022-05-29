local ITEM = Clockwork.item:New();
ITEM.name = "Карманные часы";
ITEM.plural = "Карманных часов";
--ITEM.spawnType = "consumable";
--ITEM.spawnValue = 4;
ITEM.model = "models/pb_upd/other/watch.mdl";
ITEM.weight = 0.2;
ITEM.description = "Увесистые карманные часы, не дадут потерять вам ход времени.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
