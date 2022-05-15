-- luacheck: globals Clockwork ATB_STRENGTH timer IsValid

local ITEM = Clockwork.item:New("alcohol_base")
ITEM.name = "Бутылёк Водки"
ITEM.plural = "Бутыльков Водки"
ITEM.spawnType = "consumable"
ITEM.spawnValue = 3
ITEM.thirst = 10
ITEM.model = "models/teebeutel/metro/objects/bottle03.mdl"
ITEM.weight = 0.3
ITEM.expireTime = 1800
ITEM.vomit = 15
ITEM.description = "Стеклянный бутылёк из непрозрачного стекла со спиртосодержащей жидкостью, что-то вроде самогона."
ITEM.attributes = {
	[ATB_STRENGTH] = -4
}

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	Clockwork.player:SetDrunk(player, self.expireTime)

	timer.Simple(
		0.5,
		function()
			if IsValid(player) then
				player:EmitSound("npc/barnacle/barnacle_gulp" .. math.random(1, 2) .. ".wav")
			end
		end
	)

	timer.Simple(
		1,
		function()
			if IsValid(player) then
				local disease = false
				if math.random(1, 20) == 1 then
					player:SetCharacterData("diseases", "colorblindness")
					disease = true
				elseif math.random(1, 20) == 1 then
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
end

ITEM:Register()
