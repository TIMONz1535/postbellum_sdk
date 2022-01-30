local ITEM = Clockwork.item:New("cps_base")
ITEM.name = "Маска с диодными окулярами"
ITEM.plural = "Масок с диодными окулярами"
ITEM.model = "models/hl2rp/metropolice/suit/gasmask6.mdl"
ITEM.weight = 1
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Маска для сотрудников ГО с дополнительными фильтрами, оснащенная диодными окулярами."
ITEM.customFunctions = {"Снять"}
ITEM.canZoom = true
ITEM.wearBodyId = 2
ITEM.wearBodyState = 8

ITEM:Register()
