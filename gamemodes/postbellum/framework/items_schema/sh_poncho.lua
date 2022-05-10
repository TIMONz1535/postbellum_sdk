--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("uniform_base");
ITEM.name = "Пончо";
ITEM.plural = "Пончо";
ITEM.weight = 2;
ITEM.protection = 0.3;
ITEM.description = "Больше похоже на старую тряпку, но Вортигонтам нравится.";
ITEM.whitelist = {
	[FACTION_VORT] = true,
	[FACTION_VORTSLAVE] = true,
};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement()
	return "models/vortigaunt_ozaxi.mdl";
end;

ITEM:Register();