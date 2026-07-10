-------------------
---- AUTOSTART ----
-------------------
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

local apps = require("configs.vars").apps

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
hl.on("hyprland.start", function()
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd(apps.notifier)
    hl.exec_cmd("batsignal")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("sleep 1; /usr/lib/pam_kwallet_init")
	hl.exec_cmd("sleep 2; kwalletd6")
	hl.exec_cmd("wlsunset -t 5400 -T 5401")
	hl.exec_cmd("hyprshell run &")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("syshud -p top")
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("systemctl --user import-environment QT_QPA_PLATFORMTHEME")

    -- Default apps
	hl.exec_cmd(apps.browser)
	hl.exec_cmd("[workspace 3 silent] " .. apps.terminal)
	hl.exec_cmd("[workspace 9 silent] discord")
end)
