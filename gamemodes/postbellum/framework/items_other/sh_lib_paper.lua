-- luacheck: globals Clockwork

local ITEM = Clockwork.item:New("notelib_base")
ITEM.name = "Печатный лист"
ITEM.plural = "Печатных листов"
ITEM.model = "models/props_c17/paper01.mdl"
ITEM.weight = 0.1
ITEM.description = "Чистый лист бумаги для записи или печати."
ITEM.lib_type = "paper"
ITEM:Register()
