local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Синие штаны повстанцев"
ITEM.plural = "Синих штанов повстанцев"
ITEM.model = "models/tnb/items/pants_rebel.mdl"
ITEM.skin = 1
ITEM.weight = 2
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Штаны для сил сопротивления."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 2
ITEM.wearBodyState = 5

ITEM:Register()
