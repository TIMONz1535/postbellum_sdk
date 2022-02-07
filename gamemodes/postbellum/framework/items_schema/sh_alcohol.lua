-- luacheck: globals Clockwork ATB_STRENGTH timer IsValid

local ITEM = Clockwork.item:New("alcohol_base")
ITEM.name = "Бутылек спирта";
ITEM.plural = "Бутыльков спирта";
ITEM.thirst = 10
ITEM.model = "models/labware/bottle1.mdl";
ITEM.weight = 0.3
ITEM.expireTime = 1800
ITEM.vomit = 100
ITEM.description = "Бутылек содержащий стопроцентный спирт, употребление внутрь опасно.";
ITEM.attributes = {
	[ATB_STRENGTH] = -4
}

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	for k, v in pairs(self.attributes) do
		player:BoostAttribute(self.name, k, v, self.expireTime)
	end
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
				if math.random(1, 15) == 1 then
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
