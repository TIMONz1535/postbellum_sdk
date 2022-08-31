local RECIPE = Clockwork.recipe:New()
	RECIPE.name = "Хитиновый доспех"
	RECIPE.category = "Одежда"
	RECIPE.description = "Самодельная броня. Очень тяжелая, стесняющая движения, но, невероятно крепкая. Состоит из скрепленных между собой хитиновых панцирей. Собрана умелым вортигонтом."
	RECIPE.model = "models/hl2rp/vortigaunt_pb/suit/pb_vort_diy_armor.mdl"
	RECIPE.required = {
		{"scrap_cloth", 8},
		{"rope", 5},
		{"sewing_kit", 2},
		{"chitin_plate", 10}
		{"craft_rebar", 1, 0}
	}
	RECIPE.output = {
		{"vort_armor", 1}
	}
	RECIPE.factions = {
		FACTION_INCOG,
		FACTION_VORT,
	}
	RECIPE.reqAtts = {
		{"agt", 5}, -- быстрота
		{"dex", 60}, -- ловкость рук
		{"stam", 25}, -- выносливость
		{"str", 58} -- сила
	}

RECIPE:Register()