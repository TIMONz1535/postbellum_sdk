local ITEM = Clockwork.item:New()
ITEM.name = "Пищевые добавки высшего сорта"
ITEM.plural = "Пищевых добавок высшего сорта"
ITEM.hunger = 40
ITEM.thirst = 10
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"}
ITEM.model = "models/uu_branded/mres/consumables/tag_mre.mdl"
ITEM.weight = 0.6
ITEM.useText = "Съесть"
ITEM.category = "Продукты"
ITEM.description = "Коробочка с пластиковым контейнером, внутри которого ароматная каша. На вкус как курица."
ITEM.vomit = 20

function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 3, 0, player:GetMaxHealth()))
end

function ITEM:OnDrop(player, position)
end

ITEM:Register()
