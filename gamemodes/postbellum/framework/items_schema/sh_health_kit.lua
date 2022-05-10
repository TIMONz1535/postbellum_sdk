--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Аптечка";
ITEM.plural = "Аптечек";
--ITEM.cost = 30;
ITEM.model = "models/items/healthkit.mdl";
ITEM.weight = 1;
ITEM.category = "Медикаменты"
ITEM.useSound = "items/medshot4.wav";
ITEM.description = "Контейнер содержащий различные перевязочные материалы, и лекарственные препараты.";
ITEM.customFunctions = {"Вылечить другого"};
ITEM.vomit = -40;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player, 2), 0, player:GetMaxHealth() ) );

	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "health_kit");
		end;
	end;
end;

ITEM:Register();