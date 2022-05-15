
-----------------------------------------------------
local ITEM = Clockwork.item:New();
ITEM.name = "Сардины";
ITEM.plural = "Сардин";
ITEM.hunger = 30;
ITEM.model = "models/uu_branded/bioshockinfinite/cardine_can_open.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Консервная банка с сардинами.";
ITEM.vomit = 15;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()) );
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_AGILITY, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
 
ITEM:Register();