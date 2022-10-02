local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Противогаз"
ITEM.plural = "Противогазов"
ITEM.model = "models/tnb/items/gasmask.mdl"
ITEM.weight = 1
ITEM.description = "Старый армейский противогаз."
ITEM.wearBodyId = 4
ITEM.wearBodyState = 2

ITEM.customFunctions = {"Снять"}
ITEM.scraps = 0

ITEM:Register()
