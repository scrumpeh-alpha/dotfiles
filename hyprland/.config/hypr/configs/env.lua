-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

local cursor_theme = "Adwaita"
local cursor_size = 24

hl.env("XCURSOR_THEME", cursor_theme)
hl.env("XCURSOR_SIZE", tostring(cursor_size))
hl.env("HYPRCURSOR_THEME", cursor_theme)
hl.env("HYPRCURSOR_SIZE", tostring(cursor_size))
hl.env("XDG_MENU_PREFIX", "kde-")
-- hl.env("XDG_MENU_PREFIX", "plasma-")
hl.env("GDK_SCALE", "1.5")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("HYPRSHOT_DIR", "/home/scrumpeh/Pictures/hyprshot/")
hl.env("QT_QPA_PLATFORMTHEME", "kde")
hl.env("QT_QPA_PLATFORM", "wayland")
-- note: created udev rules for this
hl.env("AQ_DRM_DEVICES", "/dev/dri/intel-igpu:/dev/dri/nvidia-dgpu")
