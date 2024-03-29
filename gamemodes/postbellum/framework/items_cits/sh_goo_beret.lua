-- luacheck: globals Clockwork SERVER GENDER_FEMALE

local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Берет Городского Ополчения"
ITEM.plural = "Беретов Городского Ополчения"
ITEM.model = "models/pb_upd/cpp_items/beret.mdl"
ITEM.weight = 0.5
ITEM.description = "Берет сотрудников Городского Ополчения."
ITEM.wearBodyId = 2
-- male only
ITEM.wearBodyState = 0
ITEM.resetBodyState = 2
ITEM.resetBodyStateF = 1

ITEM.customFunctions = {"Снять"}
ITEM.scraps = 0

if SERVER then
	local function ResetBodyGroup(self, player)
		local uniformItem = player:GetUniformItem()
		if not uniformItem or uniformItem.uniqueID ~= "uniform_goo" then
			return
		end

		local id = self.wearBodyId
		local state = self.wearBodyState
		if id >= player:GetNumBodyGroups() or state >= player:GetBodygroupCount(id) then
			return
		end

		local model = player:GetModel()
		local targetBodyGroups = player:GetCharacterData("BodyGroups") or {}
		local ids = targetBodyGroups[model] or {}
		local curState = ids[tostring(id)]

		if curState == state then
			ids[tostring(id)] = nil
			player:SetBodygroup(id, player:GetGender() == GENDER_FEMALE and self.resetBodyStateF or self.resetBodyState)
			player:SetCharacterData("BodyGroups", targetBodyGroups)
		end
	end

	function ITEM:CanSell(player)
		ResetBodyGroup(self, player)
		return true
	end

	function ITEM:CanGiveStorage(player, storageTable)
		ResetBodyGroup(self, player)
		return true
	end

	function ITEM:OnDrop(player, position)
		ResetBodyGroup(self, player)
		return true
	end

	function ITEM:OnCustomFunction(player, name)
		if name == "Снять" then
			ResetBodyGroup(self, player)
		end
	end

	function ITEM:OnUse(player, itemEntity)
		local uniformItem = player:GetUniformItem()
		if not uniformItem or uniformItem.uniqueID ~= "uniform_goo" or player:GetGender() == GENDER_FEMALE then
			Clockwork.player:Notify(player, "Вы не можете надеть это.")
			return false
		end

		if not player:Alive() or player:IsRagdolled() then
			Clockwork.player:Notify(player, "Вы не можете сделать это в данный момент!")
			return false
		end

		local id = self.wearBodyId
		local state = self.wearBodyState
		if id >= player:GetNumBodyGroups() or state >= player:GetBodygroupCount(id) then
			Clockwork.player:Notify(player, "Ваша модель не поддерживает этот предмет одежды.")
			return false
		end

		local model = player:GetModel()
		local targetBodyGroups = player:GetCharacterData("BodyGroups") or {}
		local ids = targetBodyGroups[model] or {}
		local curState = ids[tostring(id)]

		if curState ~= state then
			ids[tostring(id)] = state
			targetBodyGroups[model] = ids
			player:SetBodygroup(id, state)
			player:SetCharacterData("BodyGroups", targetBodyGroups)
			return true
		end

		Clockwork.player:Notify(player, "Вы уже надели это.")
		return false
	end
else
	function ITEM:OnUse()
	end

	function ITEM:OnDrop()
	end
end

ITEM:Register()
