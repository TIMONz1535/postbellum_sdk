local ITEM = Clockwork.item:New();
ITEM.name = "Лимон";
ITEM.plural = "Лимонов";
ITEM.hunger = 4;
ITEM.thirst = 8;
ITEM.model = "models/pb_upd/food/lemon.mdl";
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.5;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Большой и очень кислый лимон.";
ITEM.vomit = 5;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 2, 0, player:GetMaxHealth()) );
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 60);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();