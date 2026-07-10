-------------------
---- SCROLLING ----
-------------------

-- Layout switching triggers
hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd("hyprctl keyword general:layout dwindle"))
hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("hyprctl keyword general:layout scrolling"))

-- Binds
hl.bind("SUPER + period", hl.dsp.layout("move +col"))
hl.bind("SUPER + comma",  hl.dsp.layout("move -col"))
hl.bind("SUPER + SHIFT + period", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + SHIFT + comma",  hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + up",     hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + down",   hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + ALT + L", hl.dsp.layout("togglefit"))
hl.bind("SUPER + ALT + F", hl.dsp.layout("fit all"))
