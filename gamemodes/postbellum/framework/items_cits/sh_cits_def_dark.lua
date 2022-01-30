local ITEM = Clockwork.item:New("cits_base")
ITEM.name = "Темная повседневная куртка"
ITEM.plural = "Темных повседневных курток"
ITEM.model = "models/tnb/items/shirt_citizen2.mdl"
ITEM.weight = 1
ITEM.useText = "Надеть"
ITEM.category = "Одежда"
ITEM.description = "Темная куртка с закатанными рукавами для обычных граждан."
ITEM.customFunctions = {"Снять"}
ITEM.wearBodyId = 1
ITEM.wearBodyState = 1

ITEM:Register()
