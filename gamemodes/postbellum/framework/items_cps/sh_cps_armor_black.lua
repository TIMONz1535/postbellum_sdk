local ITEM = Clockwork.item:New("cps_base")
ITEM.name = "Тяжелый черный бронежилет"
ITEM.plural = "Тяжелых черных бронежилетов"
ITEM.model = "models/hl2rp/metropolice/suit/black_armor.mdl"
ITEM.weight = 1
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Тяжелый бронежилет ГО черного цвета."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 4
ITEM.wearBodyState = 4

ITEM:Register()
