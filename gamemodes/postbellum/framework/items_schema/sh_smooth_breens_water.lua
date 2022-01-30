--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Газировка";
ITEM.plural = "Газировки";
ITEM.thirst = 30;
-- ITEM.sleep = 10;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.skin = 1;
ITEM.model = "models/props_junk/popcan01a.mdl";
ITEM.weight = 0.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Красная алюминиевая баночка с газированной водой.";
ITEM.vomit = 15;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 2, 0, player:GetMaxHealth()) );
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, -2, 120);
	player:BoostAttribute(self.name, ATB_ENDURANCE, -2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();