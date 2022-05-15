-- luacheck: globals Clockwork ATB_STRENGTH

local ITEM = Clockwork.item:New("alcohol_base")
ITEM.name = "Джин"
ITEM.plural = "Джина"
ITEM.spawnType = "consumable"
ITEM.spawnValue = 3
ITEM.thirst = 20
ITEM.model = "models/uu_branded/bioshockinfinite/jin_bottle.mdl"
ITEM.weight = 1.5
ITEM.expireTime = 1800
ITEM.vomit = 30
ITEM.description = "Стеклянная бутылка, заполненная странной жидкостью."
ITEM.attributes = {
	[ATB_STRENGTH] = 4
}

ITEM:Register()
