-- luacheck: globals Clockwork

local ITEM = Clockwork.item:New("notelib_base")
ITEM.name = "Блокнот"
ITEM.plural = "Блокнотов"
ITEM.model = "models/props_office/notepad_office.mdl"
ITEM.weight = 0.1
ITEM.description = "Вместительный блокнот."
ITEM.lib_type = "notepad"
ITEM:Register()
