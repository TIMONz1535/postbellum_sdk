local ITEM = Clockwork.item:New();
ITEM.name = "Консервированные фрукты";
ITEM.plural = "Консервированных фруктов";
ITEM.hunger = 30;
ITEM.thirst = 10;
ITEM.model = "models/pb_upd/food/canned_food.mdl";
ITEM.skin = 1;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Консервная банка с различными фруктами.";
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