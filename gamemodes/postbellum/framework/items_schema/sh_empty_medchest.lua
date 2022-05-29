local ITEM = Clockwork.item:New();
ITEM.name = "Пустой медицинский кейс";
ITEM.plural = "Пустых медицинских кейсов";
ITEM.model = "models/pb_upd/other/fmk_empty.mdl";
ITEM.weight = 0.3;
ITEM.description = "Пустой жесткий чемоданчик, раньше в нем хранились медикаменты.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
