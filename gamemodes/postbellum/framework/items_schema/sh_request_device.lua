--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Устройство запроса";
ITEM.plural = "Устройств запроса";
--ITEM.cost = 15;
ITEM.model = "models/gibs/shield_scanner_gib1.mdl";
ITEM.weight = 0.8;
ITEM.description = "Маленькое устройство, напоминающее радио.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();