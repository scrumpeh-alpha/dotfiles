-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Enable plugins on launch
hl.on("hyprland.start", function ()
    hl.exec_cmd("hyprpm reload -n")
end)

-----------------
---- MODULES ----
-----------------

-- require("configs.vars") -- not needed for now
require("configs.monitors")
require("configs.env")
require("configs.autostart")
require("configs.style")
require("configs.input")
require("configs.keybinds")
require("configs.windowrules")
require("configs.scrolling")
require("configs.animations")

-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
