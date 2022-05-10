-- luacheck: globals Clockwork math FACTION_REBELJUG FACTION_CREMATOR IsValid SERVER

local ITEM = Clockwork.item:New()
ITEM.name = "Ремкомплект"
ITEM.plural = "Ремкомплектов"
ITEM.model = "models/props_lab/partsbin01.mdl"
ITEM.weight = 10
ITEM.useSound = "vehicles/crane/crane_magnet_switchon.wav"
ITEM.description = "Набор инструментов и деталей для ремонта тяжелой брони."
ITEM.customFunctions = {"Починить другого"}

function ITEM:OnUse(player, itemEntity)
	local faction = player:GetFaction()
	if faction == FACTION_REBELJUG or faction == FACTION_CREMATOR then
		local maxArmor = player:GetMaxArmor()
		player:SetArmor(math.Clamp(player:Armor() + maxArmor * 0.5, 0, maxArmor))
		return -- don't use "true" it doesn't take item
	end

	Clockwork.player:Notify(player, "Вы не можете использовать это.")
	return false
end

function ITEM:OnDrop(player, position)
end

if SERVER then
	function ITEM:OnCustomFunction(player, name)
		if name == "Починить другого" then
			local lookingPly = player:GetEyeTrace().Entity
			if not IsValid(lookingPly) or not lookingPly:IsPlayer() then
				Clockwork.player:Notify(player, "Вы должны смотреть на игрока!")
				return
			end

			local faction = lookingPly:GetFaction()
			if faction == FACTION_REBELJUG or faction == FACTION_CREMATOR then
				local maxArmor = lookingPly:GetMaxArmor()
				lookingPly:SetArmor(math.Clamp(lookingPly:Armor() + maxArmor * 0.5, 0, maxArmor))

				lookingPly:EmitSound("vehicles/crane/crane_magnet_switchon.wav")
				player:TakeItem(self)
				player:FakePickup(lookingPly)
				return true
			end

			Clockwork.player:Notify(player, "Вы не можете починить броню этого игрока.")
			return false
		end
	end
end

ITEM:Register()
