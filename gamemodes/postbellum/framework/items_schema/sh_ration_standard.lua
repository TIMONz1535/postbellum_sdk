local ITEM = Clockwork.item:New("ration_base")
ITEM.name = "Стандартный рацион"
ITEM.plural = "Стандартных рационов"
ITEM.model = "models/uu_branded/weapons/w_packatc.mdl"
ITEM.weight = 2
ITEM.description = "Стандартный рацион питания. Дополнительно содержит небольшое количество жетонов."
ITEM.cash = 20
ITEM.giveItems = {
	{"standart_supplements"},
	{"breens_water"}
}

ITEM:Register()
