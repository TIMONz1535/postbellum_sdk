local ITEM = Clockwork.item:New();
ITEM.name = "Консервированная каша";
ITEM.plural = "Консервированной каши";
ITEM.hunger = 50;
ITEM.model = "models/pb_upd/food/canned_food.mdl";
ITEM.skin = 3;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 1;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Консервная банка с гречневой кашей и курицей, очень питательная.";
ITEM.vomit = 20;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()) );

	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 2, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();