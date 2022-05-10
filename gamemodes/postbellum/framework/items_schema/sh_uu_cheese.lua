-- © 2022 PostBellum HL2 RP. All rights reserved.

local ITEM = Clockwork.item:New()
ITEM.name = "Головка сыра"
ITEM.desc =
	"Изумительный благородный сыр. Великолепный внешний вид и мощный аромат, потрясающий уточенный вкус со слезой. Словно сон наяву."
ITEM.weight = 3
ITEM.model = "models/bioshockinfinite/pound_cheese.mdl"
ITEM.category = "Продукты"
ITEM.useText = "Вкусить"
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"}

ITEM.hp = 20
ITEM.hunger = 30
ITEM.vomit = 10

ITEM.isRareSpawn = true
ITEM.spawnValue = 0.3

function ITEM:OnUse(ply, ent)
end

function ITEM:OnDrop(ply, pos)
end

ITEM:Register()
