------------------
---- MONITORS ----
------------------
-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

hl.monitor({
	output = "eDP-1",
	mode = "preferred",
	position = "auto",
	scale = "1.25",
})

hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})
