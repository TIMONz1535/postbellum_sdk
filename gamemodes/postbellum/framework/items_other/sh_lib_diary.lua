-- luacheck: globals Clockwork

local ITEM = Clockwork.item:New("notelib_base")
ITEM.name = "Ежедневник"
ITEM.plural = "Ежедневников"
ITEM.model = "models/props_office/book07.mdl"
ITEM.weight = 0.3
ITEM.description = "Многостраничная книжка для записей."
ITEM.lib_type = "book"
ITEM:Register()
