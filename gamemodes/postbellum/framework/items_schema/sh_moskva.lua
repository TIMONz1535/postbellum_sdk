-- luacheck: globals Clockwork ATB_STAMINA ATB_ACROBATICS ATB_ENDURANCE ATB_STRENGTH timer IsValid

local ITEM = Clockwork.item:New("alcohol_base")
ITEM.name = "Коктейль Москва"
ITEM.plural = "Коктейлей Москва"
ITEM.thirst = 10
ITEM.model = "models/teebeutel/metro/objects/bottle02.mdl"
ITEM.skin = 1
ITEM.weight = 0.3
ITEM.expireTime = 1800
ITEM.vomit = 5
ITEM.description = "Стеклянный бутылёк из непрозрачного стекла с жидкостью, имеющий необычный аромат."
ITEM.attributes = {
	[ATB_STAMINA] = 2,
	[ATB_ACROBATICS] = 2,
	[ATB_ENDURANCE] = 2,
	[ATB_STRENGTH] = 2
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
				player:EmitSound("ambient/levels/canals/windchine1.wav")
			end
		end
	)
end

ITEM:Register()
