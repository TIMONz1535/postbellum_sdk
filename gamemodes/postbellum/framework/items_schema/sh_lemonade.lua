local ITEM = Clockwork.item:New();
ITEM.name = "Бутылка лимонада";
ITEM.plural = "Бутылок лимонада";
ITEM.thirst = 75;
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"};
ITEM.model = "models/props_junk/garbage_plasticbottle003a.mdl";
ITEM.weight = 1.5;
ITEM.useText = "Выпить";
ITEM.category = "Продукты";
ITEM.description = "Большая пластикова бутылка, заполненная лимонадом.";
ITEM.vomit = 25;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + 2, 0, player:GetMaxHealth()) );
	
	player:BoostAttribute(self.name, ATB_ACROBATICS, 2, 120);
	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, -2, 120);
	
	player:GiveItem(Clockwork.item:CreateInstance("large_soda_empty"), true);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();