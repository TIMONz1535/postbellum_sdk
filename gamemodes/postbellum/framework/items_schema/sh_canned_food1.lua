local ITEM = Clockwork.item:New();
ITEM.name = "Консервированная фасоль";
ITEM.plural = "Консервированной фасоли";
ITEM.hunger = 30;
ITEM.thirst = 5;
ITEM.model = "models/pb_upd/food/canned_food.mdl";
-- ITEM.skin = 1
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Консервная банка с белой фасолью.";
ITEM.vomit = 15;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()) );

	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();