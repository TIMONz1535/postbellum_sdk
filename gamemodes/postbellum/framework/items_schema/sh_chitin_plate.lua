local ITEM = Clockwork.item:New();
ITEM.name = "Хитиновая пластина";
ITEM.plural = "Хитиновых пластин";
ITEM.model = "models/pb_upd/other/chitin_plate.mdl"
ITEM.weight = 0.5;
ITEM.category = "Мусор";
ITEM.description = "Маленькая хитиновая пластинка, оторванная с тушки муравьиного льва.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();