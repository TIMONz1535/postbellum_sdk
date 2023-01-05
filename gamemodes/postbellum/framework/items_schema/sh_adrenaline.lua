
--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Адреналин";
ITEM.plural = "Адреналина";
ITEM.isRareSpawn = true;
ITEM.spawnValue = 1;
--ITEM.cost = 100;
ITEM.model = "models/pb_upd/medical/autoinjector.mdl";
ITEM.weight = 0.2;
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты";
ITEM.description = "Автоинъектор с адреналином. Сильный препарат, произведенный для сил ГО.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("Stamina", 100);
	player:BoostAttribute(self.name, ATB_ACROBATICS, 50, 240);
	player:BoostAttribute(self.name, ATB_STAMINA, 50, 240);
	player:BoostAttribute(self.name, ATB_AGILITY, 50, 240);
	player:BoostAttribute(self.name, ATB_STRENGTH, 50, 240);

	-- hack for EyeMovement
	player:SetNetVar("_LastDamageTime", CurTime())
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
