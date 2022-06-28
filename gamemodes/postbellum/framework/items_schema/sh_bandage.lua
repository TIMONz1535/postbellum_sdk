--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Бинт";
ITEM.plural = "Бинтов";
ITEM.spawnType = "medical";
ITEM.spawnValue = 1;
--ITEM.cost = 8;
ITEM.model = "models/pb_upd/medical/bandage.mdl";
ITEM.weight = 0.5;
ITEM.category = "Медикаменты";
ITEM.description = "Нестерильный бинт, используется для перевязки мелких ран. Пользуйтесь с умом.";
ITEM.customFunctions = {"Вылечить другого"};

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player), 0, player:GetMaxHealth() ) );

	Clockwork.plugin:Call("PlayerHealed", player, player, self);

	timer.Simple(
		1,
		function()
			if IsValid(player) then
				local disease = false
				if player:Health() <= 40 and math.random(1, 6) == 1 then
					player:SetCharacterData("diseases", "slow_deathinjection")
					disease = true
				end

				if disease then
					local pitch = player:GetCharacterData("Pitch") or 0
					player:EmitSound("ambient/voices/citizen_beaten" .. math.random(1, 5) .. ".wav", 75, 100 + pitch)
				end
			end
		end
	)

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			Clockwork.player:RunClockworkCommand(player, "CharHeal", "bandage");
		end;
	end;
end;

ITEM:Register();