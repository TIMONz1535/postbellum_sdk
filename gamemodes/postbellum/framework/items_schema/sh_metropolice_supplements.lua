local ITEM = Clockwork.item:New()
ITEM.name = "Пищевой паек ГО"
ITEM.plural = "Пищевых пайков ГО"
ITEM.hunger = 70
ITEM.thirst = 20
ITEM.useSound = {"npc/barnacle/barnacle_crunch3.wav", "npc/barnacle/barnacle_crunch2.wav"}
ITEM.model = "models/uu_branded/mres/consumables/zag_mre.mdl"
ITEM.weight = 0.6
ITEM.useText = "Съесть"
ITEM.category = "Продукты"
ITEM.description =
	"Сбалансированный пищевой паек, содержит два основных блюда в саморазогревающихся пакетах. Очень питательно и вкусно."
ITEM.vomit = 20

function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 10, 0, player:GetMaxHealth()))
	player:BoostAttribute(self.name, ATB_ENDURANCE, 2, 120)
end

function ITEM:OnDrop(player, position)
end

ITEM:Register()
