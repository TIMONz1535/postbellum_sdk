-- © 2022 PostBellum HL2 RP. All rights reserved.

local ITEM = Clockwork.item:New()
ITEM.name = "Банан"
ITEM.desc = "Желтый длинный банан. Лучше не наступать."
ITEM.weight = 0.1
ITEM.model = "models/bioshockinfinite/hext_banana.mdl"
ITEM.category = "Продукты"
ITEM.useText = "Съесть"
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"}

ITEM.hp = 3
ITEM.thirst = 3
ITEM.hunger = 6
ITEM.vomit = 5

ITEM.spawnType = "consumable"
ITEM.spawnValue = 3

function ITEM:OnUse(ply, ent)
end

function ITEM:OnDrop(ply, pos)
end

ITEM:Register()
