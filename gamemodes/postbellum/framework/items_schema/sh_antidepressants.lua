
--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Антидепрессанты";
ITEM.plural = "Антидепрессантов";
ITEM.spawnType = "medical";
ITEM.spawnValue = 3;
--ITEM.cost = 10;
ITEM.skin = 2
ITEM.model = "models/pb_upd/medical/medjar.mdl"
ITEM.weight = 0.2;
ITEM.category = "Медикаменты";
ITEM.description = "Пластиковая баночка с таблетками, которые помогут вам расслабиться.";
ITEM.vomit = 30;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetNetVar("antidepressants", CurTime() + 1800);

	player:BoostAttribute(self.name, ATB_ENDURANCE, 10, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();