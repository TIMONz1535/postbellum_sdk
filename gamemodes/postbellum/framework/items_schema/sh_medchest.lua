local ITEM = Clockwork.item:New();
ITEM.name = "Медицинский кейс";
ITEM.plural = "Медицинских кейсов";
--ITEM.spawnType = "consumable";
--ITEM.spawnValue = 4;
ITEM.model = "models/pb_upd/other/fmk.mdl";
ITEM.weight = 2.5;
ITEM.category = "misc";
ITEM.description = "Жесткий чемоданчик, удобно хранящий в себе медикаменты.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();