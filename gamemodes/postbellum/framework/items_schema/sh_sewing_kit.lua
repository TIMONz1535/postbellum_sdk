local ITEM = Clockwork.item:New();
ITEM.name = "Набор для шитья";
ITEM.plural = "Наборов для шитья";
--ITEM.spawnType = "consumable";
--ITEM.spawnValue = 4;
ITEM.model = "models/pb_upd/other/sewkit.mdl";
ITEM.weight = 0.5;
ITEM.description = "Набор для шитья, содержит в себе нитки ножницы и иголки для вышивания.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
