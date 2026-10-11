--------------------
---- ANIMATIONS ----
--------------------
-- see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.00} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 7,  bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7,  bezier = "myBezier", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "myBezier" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8,  bezier = "myBezier" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "myBezier" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,  bezier = "myBezier" })
