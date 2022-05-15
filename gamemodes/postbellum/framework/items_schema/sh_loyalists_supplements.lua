local ITEM = Clockwork.item:New()
ITEM.name = "Пищевой паек"
ITEM.plural = "Пищевых пайков"
ITEM.hunger = 60
ITEM.thirst = 15
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"}
ITEM.model = "models/uu_branded/mres/consumables/pag_mre.mdl"
ITEM.weight = 0.6
ITEM.useText = "Съесть"
ITEM.category = "Продукты"
ITEM.description = "Полноценный пищевой паек, содержит два основных блюда в саморазогревающихся пакетах."
ITEM.vomit = 20

function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 6, 0, player:GetMaxHealth()))
end

function ITEM:OnDrop(player, position)
end

ITEM:Register()
