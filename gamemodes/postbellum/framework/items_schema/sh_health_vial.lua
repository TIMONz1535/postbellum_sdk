--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Баночка с Биогелем";
ITEM.plural = "Баночек с Биогелем";
--ITEM.cost = 15;
ITEM.model = "models/healthvial.mdl";
ITEM.weight = 0.5;
ITEM.category = "Медикаменты"
ITEM.useSound = "items/medshot4.wav";
ITEM.description = "Странная баночка, наполненная зеленой жидкостью.";
ITEM.customFunctions = {"Вылечить другого"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player, 1.5), 0, player:GetMaxHealth() ) );

	Clockwork.plugin:Call("PlayerHealed", player, player, self);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "health_vial");
		end;
	end;
end;

ITEM:Register();