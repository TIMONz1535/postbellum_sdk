--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Активированный уголь";
ITEM.plural = "Активированных углей";
ITEM.spawnType = "medical";
ITEM.spawnValue = 2;
--ITEM.cost = 15;
ITEM.model = "models/pb_upd/medical/medjar.mdl"
ITEM.weight = 0.1;
ITEM.category = "Медикаменты";
ITEM.description = "Пластиковая баночка с таблетками активированного угля. Помогает при отравлении.";
ITEM.vomit = -40;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:TakeItem(self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();