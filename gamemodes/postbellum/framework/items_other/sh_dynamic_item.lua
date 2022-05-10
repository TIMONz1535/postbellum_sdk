-- © 2022 PostBellum HL2 RP. All rights reserved.

local ITEM = Clockwork.item:New()
ITEM.name = "Dynamic item template"
ITEM.color = Color(255, 255, 100)

ITEM.dataCheckList = {
	name = {type = isstring, min = 2, max = 64},
	desc = {type = isstring, min = 2, max = 256},
	weight = {type = isnumber, min = 0.1, max = 20, decimals = 1, optional = true},
	model = {type = isstring, min = 12, max = 256},
	skin = {type = isnumber, min = 0, max = 31, optional = true},
	useText = {type = isstring, min = 2, max = 32, optional = true},
	hp = {type = isnumber, min = -100, max = 100, optional = true},
	ap = {type = isnumber, min = -100, max = 100, optional = true},
	thirst = {type = isnumber, min = -100, max = 100, optional = true},
	hunger = {type = isnumber, min = -100, max = 100, optional = true},
	vomit = {type = isnumber, min = -100, max = 100, optional = true},
	--
	disease = {optional = true}
}

-- Свойство `networked` указывает, что параметр передается по сети.
-- Свойство `dataOnly` указывает, что не нужно копировать параметр в таблицу инстанса.
-- Свойство `stat` указывает, что предмет `usable` и нужно поместить виджет в правый столбик.
ITEM.widgetsList = {
	{networked = true, id = "name", name = "Название", type = "text", placeholder = "Dynamic item"},
	{networked = true, id = "desc", name = "Описание", type = "text", placeholder = "Dynamic item desc", isMultiLine = true},
	{networked = true, id = "weight", name = "Вес", default = 1},
	{networked = true, id = "model", name = "Модель", type = "text", placeholder = "models/error.mdl"},
	{networked = true, id = "skin", name = "Скин", type = "comboBox", default = 0},
	{networked = true, id = "useText", name = "Текст использования", type = "text", placeholder = "Использовать"},
	{stat = true, id = "hp", name = "Здоровье"},
	{stat = true, id = "ap", name = "Броня"},
	{stat = true, id = "thirst", name = "Вода"},
	{stat = true, id = "hunger", name = "Еда"},
	{stat = true, id = "vomit", name = "Тошнота"},
	--
	{
		dataOnly = true,
		stat = true,
		id = "disease",
		name = "Болезнь",
		type = "comboBox",
		choices = {"-", "Вылечить болезнь", "Кашель", "Температура", "Слепота", "Спид", "Рак жопы"}
	}
}

-- Поскольку нет способа узнать на клиенте о статах, то явно указываем что предмет можно использовать.
ITEM:AddData("usable", false, true)

for _, widget in ipairs(ITEM.widgetsList) do
	local check = ITEM.dataCheckList[widget.id]
	assertf(check, "widgetsList has extra param `%s`", widget.id)

	if CLIENT then
		-- Для клиента используется type, который означает UI элемент.
		local uiType = widget.type
		table.Merge(widget, check)
		widget.type = uiType or "slider"
	end

	local default = widget.default or (check.type == isstring and "" or 0)
	ITEM:AddData(widget.id, default, widget.networked)
end

if CLIENT then
	ITEM.dataCheckList = nil

	function ITEM:OnHUDPaintTargetID(ent, x, y, alpha)
		local parsed =
			markup.Parse2("<font=hl2_MainText>" .. (self.desc or self.description) .. "</font>", math.max(ScrW() / 4, 350))
		-- HACK: xAlign работает по подсчитанной длине, в то время как textAlign по максимальной. Использую GetMaxWidth.
		parsed:Draw(x - parsed:GetMaxWidth() * 0.5, y, TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP, alpha, TEXT_ALIGN_CENTER)
		y = y + parsed:GetHeight()

		-- Отличается только цвет.
		local colorTargetID = Clockwork.option:GetColor("target_id")
		Clockwork.kernel:DrawInfo(self.weight .. " кг", x, y, colorTargetID, alpha)
		return false
	end

	function ITEM:OnInstantiated()
		for _, widget in ipairs(ITEM.widgetsList) do
			local id = widget.id
			local data = self.data[id]
			if self.defaultData[id] ~= data then
				if not widget.dataOnly then
					self[id] = data
				end
			end
		end

		if self.data.usable then
			self.OnUse = function(_self, ply, ent)
			end
		end
	end
end

function ITEM:OnDrop(ply, pos)
end

ITEM:Register()
