local ITEM = Clockwork.item:New()
ITEM.name = "Заводской рацион"
ITEM.plural = "Заводских рационов"
ITEM.model = "models/uu_branded/weapons/w_packate.mdl"
ITEM.weight = 2
ITEM.description =
	"Заготовка для рациона без обозначений. Упаковка из прочного пластика, все швы запаяны, ее не открыть."

function ITEM:OnDrop(player, position)
end

ITEM:Register()
