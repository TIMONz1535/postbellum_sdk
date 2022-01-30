local ITEM = Clockwork.item:New("cps_base")
ITEM.name = "Офицерский плащ"
ITEM.plural = "Офицерских плащей"
ITEM.model = "models/hl2rp/metropolice/suit/coat.mdl"
ITEM.weight = 1
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Плащ для офицеров ГО."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 7
ITEM.wearBodyState = 1

ITEM:Register()
