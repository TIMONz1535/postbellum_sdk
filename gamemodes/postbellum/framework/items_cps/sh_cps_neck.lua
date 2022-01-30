local ITEM = Clockwork.item:New("cps_base")
ITEM.name = "Защитный воротник ГО"
ITEM.plural = "Защитных воротников ГО"
ITEM.model = "models/hl2rp/metropolice/suit/neck.mdl"
ITEM.weight = 1
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Защитный воротник для сотрудников ГО."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 3
ITEM.wearBodyState = 1

ITEM:Register()
