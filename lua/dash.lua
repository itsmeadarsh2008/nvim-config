local home = os.getenv("HOME")
local db = require("dashboard")

db.custom_center = {
	{
		icon = "  ",
		desc = "Telescope Recent Projects                 ",
		shortcut = "",
		action = "Telescope projects",
	},
{
		icon = "  ",
		desc = "Configure NeoVim                  ",
		shortcut = "",
		action = "cd ~/AppData/Local/nvim | :Telescope fd",
	}
}
