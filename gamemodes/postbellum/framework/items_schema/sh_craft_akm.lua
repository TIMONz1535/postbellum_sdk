--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Ржавый АКМ";
ITEM.plural = "Ржавых АКМ";
ITEM.isRareSpawn = true;
ITEM.spawnValue = 0.6;
--ITEM.cost = 5;
ITEM.model = "models/weapons/insurgency/w_akm.mdl";
ITEM.weight = 2;
ITEM.category = "Мусор";
ITEM.description = "Старое заклинившее оружие. Заржавело и забилось грязью.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();