--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
ITEM.name = "MP5K";
ITEM.plural = "MP5K";
--ITEM.cost = 200;
ITEM.model = "models/weapons/insurgency/w_mp5k.mdl";
ITEM.weight = 2.5;
ITEM.description = "Компактный пистолет-пулемет. Стреляет пистолетными патронами.";
ITEM.isAttachment = true;
ITEM.hasFlashlight = true;
-- ITEM.loweredOrigin = Vector(3, 0, -4);
--ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, -150, -15)
ITEM.attachmentOffsetVector = Vector(8, 1.5, 16)
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