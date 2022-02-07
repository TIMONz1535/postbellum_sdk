local ITEM = Clockwork.item:New();
ITEM.name = "Консервированные персики";
ITEM.plural = "Консервированных персиков";
ITEM.hunger = 25;
ITEM.thirst = 15;
ITEM.model = "models/pb_upd/food/canned_food.mdl";
ITEM.skin = 5;
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"};
ITEM.weight = 0.8;
ITEM.useText = "Съесть";
ITEM.category = "Продукты";
ITEM.description = "Консервная банка с персиками в собственном соку.";
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