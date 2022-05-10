-- luacheck: globals Clockwork Schema ATB_STAMINA ATB_ACROBATICS ATB_ENDURANCE ATB_STRENGTH math

local ITEM = Clockwork.item:New("alcohol_base")
ITEM.name = "Вода"
ITEM.plural = "Воды"
ITEM.spawnType = "consumable"
ITEM.spawnValue = 4
ITEM.thirst = 20
ITEM.useSound = {"npc/barnacle/barnacle_gulp1.wav", "npc/barnacle/barnacle_gulp2.wav"}
ITEM.model = "models/props_junk/popcan01a.mdl"
ITEM.weight = 0.5
ITEM.expireTime = 300
ITEM.vomit = 10
ITEM.description = "Голубая алюминиевая баночка с водой сомнительного качества."
ITEM.attributes = {
	[ATB_STAMINA] = 2,
	[ATB_ACROBATICS] = -2,
	[ATB_ENDURANCE] = -2,
	[ATB_STRENGTH] = -2
}

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	Clockwork.player:SetDrunk(player, self.expireTime)

	player:SetHealth(math.Clamp(player:Health() + 2, 0, player:GetMaxHealth()))
end

ITEM:Register()
