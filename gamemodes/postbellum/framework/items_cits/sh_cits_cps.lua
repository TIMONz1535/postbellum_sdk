local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Бронежилет ГО"
ITEM.plural = "Бронежилетов ГО"
ITEM.model = "models/tnb/items/shirt_rebelmetrocop.mdl"
ITEM.weight = 3
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Бронежилет ГО с эмблемой сопротивления."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 1
ITEM.wearBodyState = 14

ITEM:Register()
