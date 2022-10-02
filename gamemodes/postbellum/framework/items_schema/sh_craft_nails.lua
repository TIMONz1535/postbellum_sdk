--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Коробочка с гвоздями";
ITEM.plural = "Коробочек с гвоздями";
ITEM.spawnType = "crafting";
ITEM.spawnValue = 2;
--ITEM.cost = 5;
ITEM.model = "models/pb_upd/other/nails.mdl";
ITEM.weight = 1;
--ITEM.category = "Мусор";
ITEM.description = "Небольшая коробочка. Содержит гвозди, болты, гайки.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
