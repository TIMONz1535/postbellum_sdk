
-----------------------------------------------------
local ITEM = Clockwork.item:New();
ITEM.name = "Буханка хлеба";
ITEM.plural = "Буханок хлеба";
ITEM.model = "models/uu_branded/bioshockinfinite/dread_loaf.mdl";
ITEM.hunger = 25;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.6;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Большая буханка хлеба.";
ITEM.vomit = 10;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, player:GetMaxHealth()) );
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_AGILITY, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;
 
ITEM:Register();