-- luacheck: globals Clockwork IsValid SERVER

local ITEM = Clockwork.item:New()
ITEM.name = "Антидот"
ITEM.plural = "Антидотов"
ITEM.model = "models/healthvial.mdl"
ITEM.weight = 0.2
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты"
ITEM.description = 'Шприц с надписью "Антидот"'
ITEM.customFunctions = {"Вылечить другого"}

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if player:GetCharacterData("diseases") == "fast_deathinjection" then
		Clockwork.player:Notify(player, "Вы вкололи себе шприц, но кажется это не помогает.")
	elseif player:GetCharacterData("diseases") == "slow_deathinjection" then
		player:SetCharacterData("diseases", "none")
		Clockwork.player:Notify(player, "Вы вкололи себе шприц.")
	else
		Clockwork.player:Notify(player, "Вы вкололи себе шприц, но ничего не изменилось.")
	end
end

if (SERVER) then
	function ITEM:OnCustomFunction(player, name)
		if (name == "Вылечить другого") then
			local lookingPly = player:GetEyeTrace().Entity
			if not IsValid(lookingPly) or not lookingPly:IsPlayer() then
				Clockwork.player:Notify(player, "Вы должны смотреть на игрока!")
				return
			end

			if lookingPly:GetCharacterData("diseases") == "fast_deathinjection" then
				Clockwork.player:Notify(player, "Вы вкололи шприц пациенту, но кажется это не помогает.")
			elseif lookingPly:GetCharacterData("diseases") == "slow_deathinjection" then
				lookingPly:SetCharacterData("diseases", "none")
				Clockwork.player:Notify(player, "Вы вкололи шприц пациенту.")
			else
				Clockwork.player:Notify(player, "Вы вкололи шприц пациенту, но ничего не изменилось.")
			end

			lookingPly:EmitSound("items/medshot4.wav")
			player:TakeItem(self)
			player:FakePickup(lookingPly)
		end
	end
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
end

ITEM:Register()
