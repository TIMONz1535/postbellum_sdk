local ITEM = Clockwork.item:New();
ITEM.name = "Паяльная лампа";
ITEM.plural = "Паяльных ламп";
ITEM.model = "models/pb_upd/other/blowtorch.mdl"
ITEM.weight = 0.5;
ITEM.description = "Увесистая паяльная лампа, работающая на спирте. Отлично подходит для сварки некоторых материалов.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();