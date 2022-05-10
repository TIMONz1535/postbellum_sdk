-- luacheck: globals Clockwork

local ITEM = Clockwork.item:New("notelib_base")
ITEM.name = "Бланк"
ITEM.plural = "Бланков"
ITEM.model = "models/props_office/folder.mdl"
ITEM.weight = 0.1
ITEM.description = "Бланк с разметкой для заполнения."
ITEM.lib_type = "form"
ITEM:Register()
