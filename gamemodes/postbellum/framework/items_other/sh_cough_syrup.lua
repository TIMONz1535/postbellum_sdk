-- luacheck: globals Clockwork IsValid SERVER

local ITEM = Clockwork.item:New()
ITEM.name = "Сироп от кашля"
ITEM.plural = "Сиропов от кашля"
ITEM.model = "models/props_junk/glassjug01.mdl"
ITEM.weight = 0.2
ITEM.useText = "Выпить"
ITEM.category = "Медикаменты"
ITEM.description = "Стеклянная бутыль наполненная липкой густой жидкостью."
ITEM.customFunctions = {"Вылечить другого"}

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if player:GetCharacterData("diseases") == "cough" then
		player:SetCharacterData("diseases", "none")
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

			if lookingPly:GetCharacterData("diseases") == "cough" then
				lookingPly:SetCharacterData("diseases", "none")
			end
			Clockwork.player:Notify(player, "Вы дали пациенту сироп от кашля.")

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
