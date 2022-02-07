local ITEM = Clockwork.item:New();
ITEM.name = "Попкорн";
ITEM.plural = "Попкорна";
ITEM.hunger = 15;
ITEM.model = "models/bioshockinfinite/topcorn_bag.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.3;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Целый пакет сладкого попкорна, отличный вариант для перекуса.";
ITEM.vomit = 10;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()) );

	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();