local ITEM = Clockwork.item:New()
ITEM.name = 'Капли глазные'
ITEM.plural = 'Каплей глазных"'
ITEM.model = "models/pb_upd/medical/eyemed.mdl"
ITEM.weight = 0.2
ITEM.category = "Медикаменты"
ITEM.description = "Маленькая коробочка со всем необходимым для профилактики зрения."

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local lookingPly = player:GetEyeTrace().Entity
	if not IsValid(lookingPly) or not lookingPly:IsPlayer() then
		Clockwork.player:Notify(player, "Вы должны смотреть на игрока!")
		return false
	end

	if lookingPly:GetCharacterData("diseases") == "colorblindness" then
		Clockwork.player:Notify(player, "Вы помогли пациенту избавиться от слепоты.")
		lookingPly:SetCharacterData("diseases", "none")
	else
		Clockwork.player:Notify(player, "Вы использовали глазные капли, но ничего не изменилось.")
	end
end

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
end

ITEM:Register()