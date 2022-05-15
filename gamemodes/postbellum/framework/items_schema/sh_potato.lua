local ITEM = Clockwork.item:New();
ITEM.name = "Картофелина";
ITEM.plural = "Картофелин";
ITEM.hunger = 10;
ITEM.model = "models/uu_branded/bioshockinfinite/hext_potato.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.5;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Большая картофелина.";
ITEM.vomit = 10;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()) );

	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();