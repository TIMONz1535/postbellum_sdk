--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Радио приёмник";
ITEM.plural = "Радио приёмников";
--ITEM.cost = 30;
ITEM.model = "models/props_lab/citizenradio.mdl";
ITEM.weight = 5;
ITEM.description = "Очень старый приёмник. Удивительно, что он еще работает.";

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	local trace = player:GetEyeTraceNoCursor();

	if (trace.HitPos:Distance( player:GetShootPos() ) <= 192) then
		local entity = ents.Create("cw_radio");

		entity:SetItemTable(self);
		entity:SetModel(self.model);
		entity:SetPos(trace.HitPos);
		entity:Spawn();

		if (IsValid(itemEntity)) then
			entity:SetPos( itemEntity:GetPos() );
			entity:SetAngles( itemEntity:GetAngles() );

			if not itemEntity:IsMoveable() then
				entity:DisableMotion()
			end
		else
			Clockwork.entity:MakeFlushToGround(entity, trace.HitPos, trace.HitNormal);
		end;
	else
		Clockwork.player:Notify(player, "Вы не можете выбросить приёмник так далеко!");

		return false;
	end;
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();