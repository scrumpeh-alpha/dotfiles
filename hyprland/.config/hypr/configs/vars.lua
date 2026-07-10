--------------------------
---- GLOBAL VARIABLES ----
--------------------------
local M = {}

-- Setting "default" apps
M.apps = {
	terminal        = "kitty",
	file_manager    = "dolphin",
	menu            = "~/.config/rofi/launchers/type-7/launcher.sh", -- CUSTOM ROFI CONFIG
	altmenu         = "rofi -show drun -theme Arc-Dark",
	notifier        = "swaync",
	browser         = "firefox",
}

return M
