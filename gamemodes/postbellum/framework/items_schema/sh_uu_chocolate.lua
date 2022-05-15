
-----------------------------------------------------
local ITEM = Clockwork.item:New();
ITEM.name = "Плитка шоколада";
ITEM.plural = "Плиток шоколада";
ITEM.model = "models/uu_branded/bioshockinfinite/hext_candy_chocolate.mdl";
ITEM.hunger = 10;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.5;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Плитка молочного шоколада, завернутого в фольгу.";
ITEM.vomit = 10;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 7, 0, player:GetMaxHealth()) );
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_AGILITY, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();