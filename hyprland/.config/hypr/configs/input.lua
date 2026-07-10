---------------
---- INPUT ----
---------------
-- See https://wiki.hyprland.org/Configuring/Variables/#input

hl.config({
	input = {
		numlock_by_default = true,

		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "compose:ralt",
		kb_rules = "",

		follow_mouse = 1,

		accel_profile = "flat",
		force_no_accel = 0,

		sensitivity = -0.75,
		scroll_factor = 0.4,

		repeat_delay = 350,
		repeat_rate = 25,

		touchpad = {
			natural_scroll = true,
			scroll_factor = 0.2,
		},
	},
	cursor = {
		no_hardware_cursors = true,
		use_cpu_buffer = true,
	},
})

-- Gestures configuration
hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Per-device exceptions
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
	name = "e_signal_usb_gaming_mouse",
	sensitivity = -0.9,
	accel_profile = "flat",
})

hl.device({
	name = "elan1200:00-04f3:30f7-touchpad",
	sensitivity = 0.2,
	accel_profile = "flat",
})
