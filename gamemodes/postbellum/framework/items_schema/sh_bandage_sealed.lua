local ITEM = Clockwork.item:New();
ITEM.name = "Стерильный бинт";
ITEM.plural = "Стерильных бинтов";
ITEM.spawnType = "medical";
ITEM.spawnValue = 1;
--ITEM.cost = 8;
ITEM.skin = 1;
ITEM.model = "models/pb_upd/medical/bandage.mdl";
ITEM.weight = 0.5;
ITEM.category = "Медикаменты";
ITEM.description = "Стерильный бинт в целлофановой упаковке, используется для перевязки ран.";
ITEM.customFunctions = {"Вылечить другого"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player), 0, player:GetMaxHealth() ) );

	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "bandage_sealed");
		end;
	end;
end;

ITEM:Register();
