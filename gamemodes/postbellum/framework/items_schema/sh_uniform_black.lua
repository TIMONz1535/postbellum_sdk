--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("uniform_base");
ITEM.name = "Черная броня Повстанцев";
ITEM.plural = "Черной брони Повстанцев";
ITEM.model = "models/pb_upd/suit_cit/blackarmore.mdl"
ITEM.weight = 8;
ITEM.protection = 0.4;
ITEM.description = "Броня черного цвета с металлическими пластинами.";
ITEM.whitelist = {
	[FACTION_MPF] = true,
	[FACTION_ADMIN] = true,
	[FACTION_REBEL] = true,
	[FACTION_REBELMEDIC] = true,
	[FACTION_REBELBOSS] = true,
	[FACTION_SYNDICATE] = true,
	[FACTION_REFUGEE] = true,
	[FACTION_RAIDER] = true,
	[FACTION_INCOG] = true,
};

-- Called when a replacement is needed for a player.
function ITEM:GetReplacement(player)
	return "models/tactical_rebel.mdl";
end;

ITEM:Register();