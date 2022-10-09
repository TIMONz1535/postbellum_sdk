---@diagnostic disable: lowercase-global
---@diagnostic disable: undefined-global

max_line_length = 125
max_cyclomatic_complexity = 20
std = "luajit+scopes+postbellum"

-- ignore unused local, undefined globals and fields, it controller by "Lua Language Server" plugin
ignore = {"113", "143", "212"}

stds.scopes = {}
stds.scopes.globals = {
	"ENT"
}

stds.postbellum = {}
stds.postbellum.globals = {
	"assertf",
	"Aabb",
	"Client",
	"ClientManager",
	"ColorToChar",
	"CharToColor",
	"ESP",
	"Log",
	"Stack",
	"CAD",
	"ChatCommand",
	"Clockwork",
	"ClusterEngine",
	"Pantry",
	"PantryInstance",
	"SALES"
}
