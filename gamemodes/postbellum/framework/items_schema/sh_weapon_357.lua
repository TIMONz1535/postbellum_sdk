--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
ITEM.name = "Магнум .357";
ITEM.plural = "Магнумов .357";
--ITEM.cost = 300;
ITEM.model = "models/weapons/w_357.mdl";
ITEM.weight = 2;
ITEM.description = "Красивый серебряный пистолет. Имеет большую огневую мощь.";
ITEM.isAttachment = true;
ITEM.isPrimaryWeapon = true;
-- ITEM.loweredOrigin = Vector(3, 0, -4);
--ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
ITEM.attachmentOffsetAngles = Angle(0, 0, -90)
ITEM.attachmentOffsetVector = Vector(-2, -1, -8)
ITEM.whitelist = {
	[FACTION_MPF] = true,
	[FACTION_OTA] = true,
	[FACTION_SCIENT] = true,
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
	[FACTION_INCOG] = true,
};

ITEM:Register();