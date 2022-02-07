local ITEM = Clockwork.item:New();
ITEM.name = "Видеокассета";
ITEM.plural = "Видеокассет";
--ITEM.spawnType = "consumable";
--ITEM.spawnValue = 4;
ITEM.model = "models/props_office/videocassette.mdl";
ITEM.weight = 0.2;
ITEM.category = "misc";
ITEM.description = "Видеокассета, реликвия былых времен.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();