local ITEM = Clockwork.item:New();
ITEM.name = "Автоинъектор без маркировки";
ITEM.plural = "Автоинъекторов без маркировки";
ITEM.skin = 3
ITEM.model = "models/pb_upd/medical/autoinjector.mdl";
ITEM.weight = 0.2;
ITEM.useText = "Вколоть";
ITEM.category = "Медикаменты";
ITEM.description = "Автоинъектор без маркировок, явно был перезаправлен. Содержимое неизвестно, равно как и эффект воздействия.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local effect = math.random(1, 12)
	if effect == 1 then
		Clockwork.player:SetDrunk(player, 300)
		player:BoostAttribute(self.name, ATB_ENDURANCE, 5, 300)
		player:BoostAttribute(self.name, ATB_ACROBATICS, -3, 300)
		player:BoostAttribute(self.name, ATB_STRENGTH, -3, 300);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, что-то произошло.")
	elseif effect == 2 then
		player:SetCharacterData("diseases", "fever")
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Вам неожиданно стало жарко.")
	elseif effect == 3 then
		player:SetHealth( math.Clamp( player:Health() + Schema:GetHealAmount(player), 0, player:GetMaxHealth() ) )
		Clockwork.plugin:Call("PlayerHealed", player, player, self)
		player:BoostAttribute(self.name, ATB_STRENGTH, 10, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, ваше самочувствие улучшилось.")
	elseif effect == 4 then
		player:SetNetVar("antidepressants", CurTime() + 240)
		player:BoostAttribute(self.name, ATB_ENDURANCE, 10, 120)
		player:BoostAttribute(self.name, ATB_STAMINA, -20, 240)
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, что-то произошло.")
	elseif effect == 5 then
		player:BoostAttribute(self.name, ATB_STAMINA, -15, 240)
		player:BoostAttribute(self.name, ATB_ACROBATICS, -15, 240)
		player:BoostAttribute(self.name, ATB_ENDURANCE, -20, 240)
		player:BoostAttribute(self.name, ATB_STRENGTH, -10, 240)
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Ноги стали ватными, вам тяжело двигаться.")
	elseif effect == 6 then
		player:BoostAttribute(self.name, ATB_STRENGTH, 10, 240);
		player:BoostAttribute(self.name, ATB_STAMINA, 20, 240);
		player:BoostAttribute(self.name, ATB_ENDURANCE, 60, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Заряд бодрости пробежался по вашим жилам.")
	elseif effect == 7 then
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, что-то произошло.")
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
	elseif effect == 8 then
		player:SetCharacterData("Stamina", 100);
		player:BoostAttribute(self.name, ATB_ACROBATICS, 50, 240);
		player:BoostAttribute(self.name, ATB_STAMINA, 50, 240);
		player:BoostAttribute(self.name, ATB_AGILITY, 50, 240);
		player:BoostAttribute(self.name, ATB_STRENGTH, 50, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Заряд бодрости пробежался по вашим жилам.")
	elseif effect == 9 then
		player:SetCharacterData("diseases", "fever")
		player:SetCharacterData("Stamina", 10);
		player:BoostAttribute(self.name, ATB_STAMINA, -5, 240);
		player:BoostAttribute(self.name, ATB_ACROBATICS, -5, 240);
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор. Вы начали чувствовать себя плохо.")
	else
		Clockwork.player:Notify(player, "Вы вкололи себе автоинъектор, но ничего не изменилось.")
	end

end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();
