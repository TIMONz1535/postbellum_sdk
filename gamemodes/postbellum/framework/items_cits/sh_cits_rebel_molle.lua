local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Бронежилет повстанцев"
ITEM.plural = "Бронежилетов повстанцев"
ITEM.model = "models/tnb/items/shirt_rebel_molle.mdl"
ITEM.weight = 5
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Бронежилет для сил сопротивления."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 1
ITEM.wearBodyState = 15

ITEM:Register()
