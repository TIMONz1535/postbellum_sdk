-- luacheck: globals Clockwork

local ITEM = Clockwork.item:New("notelib_base")
ITEM.name = "Скоросшиватель"
ITEM.plural = "Скоросшивателей"
ITEM.model = "models/props_office/paperfolder01.mdl"
ITEM.weight = 0.3
ITEM.description = "Папка скоросшиватель красного цвета для отчетов или документов."
ITEM.lib_type = "book"
ITEM:Register()
