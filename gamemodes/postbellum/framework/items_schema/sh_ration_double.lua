local ITEM = Clockwork.item:New("ration_base")
ITEM.name = "Двойной рацион"
ITEM.plural = "Двойных рационов"
ITEM.model = "models/uu_branded/weapons/w_packatp.mdl"
ITEM.weight = 2
ITEM.description = "Двойной рацион питания. Дополнительно содержит двойное количество жетонов."
ITEM.cash = 40
ITEM.giveItems = {
	{"standart_supplements", 2},
	{"smooth_breens_water", 2}
}

ITEM:Register()
