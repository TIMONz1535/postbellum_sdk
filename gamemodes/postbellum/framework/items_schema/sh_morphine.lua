local ITEM = Clockwork.item:New();
ITEM.name = "Морфин";
ITEM.plural = "Морфина";
ITEM.isRareSpawn = true;
ITEM.spawnValue = 1;
ITEM.skin = 2
ITEM.model = "models/pb_upd/medical/autoinjector.mdl";
ITEM.weight = 0.2;
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты";
ITEM.description = "Автоинъектор с разовой дозой морфина. Сильное обезболивающее и противошоковый препарат, произведенный для сил ГО.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetCharacterData("Stamina", 100);
	player:BoostAttribute(self.name, ATB_ENDURANCE, -10, 240);
	player:BoostAttribute(self.name, ATB_STRENGTH, 80, 240);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();