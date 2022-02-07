local ITEM = Clockwork.item:New();
ITEM.name = "Сухое молоко";
ITEM.plural = "Сухого молока";
ITEM.hunger = 10;
ITEM.model = "models/pb_upd/food/powdermilk.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.2;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Пакет сухого молока, рекомендуется разбавить водой.";
ITEM.vomit = 5;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 3, 0, player:GetMaxHealth()) );

	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_AGILITY, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
