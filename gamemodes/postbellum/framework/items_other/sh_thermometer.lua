-- luacheck: globals Clockwork IsValid

local ITEM = Clockwork.item:New()
ITEM.name = "Термометр"
ITEM.plural = "Термометров"
ITEM.model = "models/pb_upd/medical/termometr.mdl"
ITEM.weight = 0.2
ITEM.category = "Медикаменты"
ITEM.description = "Спиртовой термометр, показывает температуру тела."

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local lookingPly = player:GetEyeTrace().Entity
	if IsValid(lookingPly) and lookingPly:IsPlayer() then
		if lookingPly:GetCharacterData("diseases") == "fever" then
			Clockwork.player:Notify(player, "Температура: " .. math.random(38.1, 41.6) .. " C")
		else
			Clockwork.player:Notify(player, "Температура: " .. math.random(35.2, 36.8) .. "C")
		end
	else
		if player:GetCharacterData("diseases") == "fever" then
			Clockwork.player:Notify(player, "Ваша температура: " .. math.random(38.1, 41.6) .. " C")
		else
			Clockwork.player:Notify(player, "Ваша температура: " .. math.random(35.2, 36.8) .. "C")
		end
	end
	return false
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
end

ITEM:Register()