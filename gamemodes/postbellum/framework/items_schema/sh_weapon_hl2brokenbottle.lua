--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
ITEM.name = "Розочка";
ITEM.plural = "Розочек";
--ITEM.cost = 200;  
ITEM.model = "models/weapons/hl2meleepack/w_brokenbottle.mdl";
ITEM.weight = 0.1;
ITEM.description = "Грозное оружие в условиях кризиса.";
ITEM.isAttachment = true;
ITEM.isMeleeWeapon = true;
-- ITEM.loweredOrigin = Vector(3, 0, -4);
--ITEM.loweredAngles = Angle(0, 45, 0);
ITEM.attachmentBone = "ValveBiped.Bip01_Pelvis";
ITEM.attachmentOffsetAngles = Angle(-80, 0, -90);
ITEM.attachmentOffsetVector = Vector(-2, 6, -8);
ITEM.whitelist = {
	[FACTION_CITIZEN] = true,
	[FACTION_MPF] = true,
	[FACTION_OTA] = true,
	[FACTION_SCIENT] = true,
	[FACTION_CWU] = true,
	[FACTION_CWUMEDIC] = true,
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

function ITEM:OnEntitySpawned(itemEntity, ply)
	itemEntity:TimerSimple(
		300,
		function(ent)
			ent:Remove()
		end
	)
end

ITEM:Register();