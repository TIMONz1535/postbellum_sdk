--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Стяжка";
ITEM.plural = "Стяжек";
ITEM.spawnType = "misc";
ITEM.spawnValue = 1;
--ITEM.cost = 4;
ITEM.model = "models/pb_upd/other/zip_tie.mdl";
ITEM.weight = 0.2;
ITEM.useText = "Связать";
ITEM.description = "Прочная пластиковая стяжка. Ей можно связать кого-нибудь.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	if (player.isTying) then
		Clockwork.player:Notify(player, "Вы уже связываете персонажа!");
		return false;
	else
		local trace = player:GetEyeTraceNoCursor();
		local target = Clockwork.entity:GetPlayer(trace.Entity);
		local tieTime = Schema:GetDexterityTime(player);

		if (target) then
			if (target:GetNetVar("tied") == 0) then
				if (target:GetShootPos():Distance( player:GetShootPos() ) <= 192) then
					if (target:GetAimVector():DotProduct( player:GetAimVector() ) > 0 or target:IsRagdolled()) then
						local whitelisted = player:GetData("Whitelisted");
						if not whitelisted or #whitelisted == 0 then
							Clockwork.kernel:PrintLog(LOGTYPE_MAJOR, player:Name() .. " пытается связать персонажа " .. target:Name() .. ", но не имеет Вайтлистов.")
							Clockwork.player:Notify(player, "Данное действие вам еще недоступно!");
							return false;
						end

						Clockwork.player:SetAction(player, "tie", tieTime);
						Clockwork.player:EntityConditionTimer(player, target, trace.Entity, tieTime, 192, function()
							if (player:Alive() and !player:IsRagdolled() and target:GetNetVar("tied") == 0 and target:GetAimVector():DotProduct( player:GetAimVector() ) > 0) then
								return true;
							end;
						end, function(success)
							if (success) then
								player.isTying = nil;

								Schema:TiePlayer( target, true, nil, Schema:PlayerIsCombine(player) );

								if (Schema:PlayerIsCombine(target)) then
									local location = Schema:PlayerGetLocation(target);
									local Digits = string.match(target:Name(), "%d%d%d%d?%d?")
									if Digits then
										Schema:AddCombineDisplayLine("Загрузка информации о радиосигнале...", Color(255, 255, 255, 255), nil, target);
										Schema:AddCombineDisplayLine("ВНИМАНИЕ! Радиосигнал юнита "..Digits.." потерян в "..location.."...", Color(255, 50, 0, 255), nil, target);
									end
								end;

								player:TakeItem(self);
								player:ProgressAttribute(ATB_DEXTERITY, 15, true);
							else
								player.isTying = nil;
							end;

							Clockwork.player:SetAction(player, "tie", false);
						end);
					else
						Clockwork.player:Notify(player, "Вы должны связать персонажа со спины!");
						return false;
					end;

					player.isTying = true;
					Clockwork.player:SetMenuOpen(player, false);
					return false;
				else
					Clockwork.player:Notify(player, "Этот персонаж слишком далеко!");
					return false;
				end;
			else
				Clockwork.player:Notify(player, "Это персонаж уже связан!");
				return false;
			end;
		else
			Clockwork.player:Notify(player, "Вы должны смотреть на игрока!");
			return false;
		end;
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
	if (player.isTying) then
		Clockwork.player:Notify(player, "Вы не можете сделать это сейчас!");
		return false;
	end;
end;

ITEM:Register();
