--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Протеин";
ITEM.plural = "Протеина";
ITEM.spawnType = "medical";
ITEM.spawnValue = 2;
--ITEM.cost = 12;
ITEM.model = "models/props_lab/jar01a.mdl";
ITEM.weight = 0.2;
ITEM.category = "Медикаменты";
ITEM.description = "Баночка с белым порошком. Необходимо употреблять в правильных дозах.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("Stamina", 100);
	player:BoostAttribute(self.name, ATB_STRENGTH, 5, 120);

	-- hack for EyeMovement
	player:SetNetVar("_LastDamageTime", CurTime())
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
