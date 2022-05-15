-- luacheck: globals Clockwork Schema

local ITEM = Clockwork.item:New("ration_base")
ITEM.name = "Рацион лоялистов"
ITEM.plural = "Рационов лоялистов"
ITEM.model = "models/uu_branded/weapons/w_packatm.mdl"
ITEM.weight = 2
ITEM.description = "Индивидуальный рацион питания из полноценных блюд. Дополнительно содержит жетоны и фрукт."
ITEM.cash = 60
ITEM.giveItems = {
	{"loyalists_supplements"},
	{"special_breens_water"}
}
ITEM.randItems = {
	{"uu_apple"},
	{"uu_banana"},
	{"uu_melon_slice"},
	{"uu_orange"},
	{"uu_pear"}
}

function ITEM:OnEaten(player)
	local cash = self.cash
	local giveItems = self.giveItems
	local verdict = player:GetCharacterData("civ_verdict")
	if verdict == LOYALIST5 then
		cash = 80
		giveItems = {
			{"metropolice_supplements"},
			{"special_breens_water", 2},
			{"uu_chocolate"}
		}
	end

	if cash then
		Clockwork.player:GiveCash(player, cash, "Рацион")
	end

	if giveItems then
		for _, v in ipairs(giveItems) do
			local amountItem = v[2] or 1
			for _ = 1, amountItem do
				player:GiveItem(Clockwork.item:CreateInstance(v[1]), true)
			end
		end
	end
end

ITEM:Register()
