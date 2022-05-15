--[[
	© 2020 PostBellum RP
--]]
local ITEM = Clockwork.item:New()
ITEM.name = "Жетон Манхак Аркады"
ITEM.plural = "Жетонов Манхак Аркады"
ITEM.model = "models/uu_branded/bioshockinfinite/hext_coin.mdl"
ITEM.weight = 0.1
ITEM.description = "Специальный жетон для игровых автоматов Манхак Аркады."

function ITEM:OnDrop()
end

ITEM:Register()
