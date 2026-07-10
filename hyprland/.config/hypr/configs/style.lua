--------------------------------
---- STYLING: LOOK AND FEEL ----
--------------------------------
-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = {
			top = "5",
			right = "10",
			bottom = "5",
			left = "10",
		},
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(1cc7fdee)", "rgba(a552ffee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		rounding = 5,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		blur = {
			enabled = false, -- for battery
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
		shadow = {
			enabled = false, -- for battery
		},
	},
	animations = {
		enabled = true,
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
	dwindle = {
		preserve_split = true, -- You probably want this
	},
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
	master = {
		new_status = "master",
	},
})

-- Default override
hl.config({
	general = {
		layout = "scrolling",
	},
})

----------------
----  MISC  ----
----------------

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		focus_on_activate = true,
	},
})

hl.config({
	debug = {
		vfr = true, -- For battery
	},
})
