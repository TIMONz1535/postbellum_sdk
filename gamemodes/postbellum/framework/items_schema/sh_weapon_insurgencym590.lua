--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
ITEM.name = "Mossberg 590";
ITEM.plural = "Mossberg 590";
--ITEM.cost = 300;
ITEM.model = "models/weapons/insurgency/w_m590.mdl";
ITEM.weight = 4;
ITEM.description = "Помповое ружье с большой боевой мощью. Эффективно на ближних дистанциях.";
ITEM.isAttachment = true;
ITEM.hasFlashlight = true;
-- ITEM.loweredOrigin = Vector(3, 0, -4);
--ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
ITEM.attachmentOffsetAngles = Angle(0, 200, -10)
ITEM.attachmentOffsetVector = Vector(10, 1, 18)
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