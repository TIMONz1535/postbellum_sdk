-- luacheck: globals SERVER Clockwork IsValid

local ITEM = Clockwork.item:New()
ITEM.name = "Защитные очки"
ITEM.plural = "Защитных очков"
ITEM.model = "models/labware/goggles.mdl"
ITEM.weight = 0.1
ITEM.useText = "Надеть"
ITEM.category = "Медикаменты"
ITEM.description = "Средство защиты органов зрения от различных внешних факторов."
ITEM.customFunctions = {"Снять"}
ITEM.AccForward = 0
ITEM.AccRight = 0
ITEM.AccUp = 1.5
ITEM.tempID = "medgoggles"
ITEM.whitelist = {
	[FACTION_CITIZEN] = true,
	[FACTION_MPF] = true,
	[FACTION_SCIENT] = true,
	[FACTION_CWU] = true,
	[FACTION_CWUMEDIC] = true,
	[FACTION_CWUBOSS] = true,
	[FACTION_GOO] = true,
	[FACTION_ADMIN] = true,
	[FACTION_REBEL] = true,
	[FACTION_REBELMEDIC] = true,
	[FACTION_REBELBOSS] = true,
	[FACTION_REBELJUG] = true,
	[FACTION_SYNDICATE] = true,
	[FACTION_REFUGEE] = true,
	[FACTION_RAIDER] = true,
	[FACTION_INCOG] = true
}

if SERVER then
	local function ResetAcc(self, player)
		local ID = self.tempID
		if player.Acc and IsValid(player.Acc[ID]) then
			player.Acc[ID]:Remove()
			player.Acc[ID] = nil

			local targetAccessories = player:GetCharacterData("Accessories2") or {}
			targetAccessories[ID] = nil
			player:SetCharacterData("Accessories2", targetAccessories)
		end
	end

	function ITEM:CanSell(player)
		ResetAcc(self, player)
		return true
	end

	function ITEM:CanGiveStorage(player, storageTable)
		ResetAcc(self, player)
		return true
	end

	function ITEM:OnDrop(player, position)
		ResetAcc(self, player)
		return true
	end

	function ITEM:OnCustomFunction(player, name)
		if name == "Снять" then
			ResetAcc(self, player)
		end
	end

	function ITEM:OnUse(player, itemEntity)
		if self.whitelist and not self.whitelist[player:GetFaction()] then
			Clockwork.player:Notify(player, "Вы не можете надеть это!")
			return false
		end

		if not player:Alive() or player:IsRagdolled() then
			Clockwork.player:Notify(player, "Вы не можете сделать это в данный момент!")
			return false
		end

		local att = player:LookupAttachment("eyes")
		local attpos = player:GetAttachment(att)
		if attpos then
			if not player.Acc then
				player.Acc = {}
			end

			local ID = self.tempID
			local AccF = self.AccForward
			local AccR = self.AccRight
			local AccU = self.AccUp
			if not IsValid(player.Acc[ID]) then
				local ent = ents.Create("cw_accessory2")
				ent:SetModel(self.model)
				ent:SetAngles(attpos.Ang)
				ent:SetPos(attpos.Pos - ent:GetForward() * AccF - ent:GetRight() * AccR - ent:GetUp() * AccU)
				ent:SetParent(player, att)
				ent:Spawn()
				player.Acc[ID] = ent
			end

			local targetAccessories = player:GetCharacterData("Accessories2") or {}
			targetAccessories[ID] = true
			player:SetCharacterData("Accessories2", targetAccessories)
			return true
		end
		Clockwork.player:Notify(player, "Вы не можете надеть это.")
		return false
	end
else
	function ITEM:OnUse()
	end

	function ITEM:OnDrop()
	end
end

Clockwork.item:Register(ITEM)
