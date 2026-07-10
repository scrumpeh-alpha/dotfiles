--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

-- Send Firefox to Workspace 1
hl.window_rule({
	name = "firefox-workspace-1",
	match = { class = "firefox" },
	workspace = 1,
})

-- Discord configuration rule block
hl.window_rule({
	name = "discord-settings",
	match = { class = "discord" },
	workspace = 9,
	float = true,
	size = "1264 680",
	center = true,
})

-- Fix some dragging issues with XWayland
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

-----------------------------
-- System Dialogs & Popups
-- (HyDE Window Rules)

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local float_classes = {
	"vlc",
	"kvantummanager",
	"qt5ct",
	"qt6ct",
	"nwg-look",
	"blueman-manager",
	"nm-applet",
	"nm-connection-editor",
	"Signal",
	"com.github.rafostar.Clapper",
	"app.drey.Warp",
	"net.davidotek.pupgui2",
	"yad",
	"eog",
	"io.github.alainm23.planify",
	"io.gitlab.theevilskeleton.Upscaler",
	"com.github.unrud.VideoDownloader",
	"io.gitlab.adhami3310.Impression",
	"io.missioncenter.MissionCenter",
	"org.kde.ark",
	"org.pulseaudio.pavucontrol",
	"org.kde.polkit-kde-authentication-agent-1",
	"org.kde.gwenview",
	"org.freedesktop.impl.portal.desktop.kde",
	".*dialog.*",
}

for _, cls in ipairs(float_classes) do
	hl.window_rule({
		name = "auto-float-class-" .. cls:gsub("[^%w]", ""),
		match = { class = cls },
		float = true,
	})
end

local float_titles = {
	"About Mozilla Firefox",
	"Picture-in-Picture",
	"Library",
	"Open",
	"Authentication Required",
	"Add Folder to Workspace",
	"Choose Files",
	"Save As",
	"Save.*",
	"Confirm to replace files",
	"File Operation Progress",
	"File Upload.*",
	"Choose wallpaper.*",
	"Library.*",
	".*dialog.*",
}

for _, ttl in ipairs(float_titles) do
	hl.window_rule({
		name = "auto-float-title-" .. ttl:gsub("[^%w]", ""),
		match = { title = ttl },
		float = true,
	})
end

-- Compound Float rules
hl.window_rule({
	name = "dolphin-progress",
	match = { class = "^(org.kde.dolphin)$", title = "^(Progress Dialog — Dolphin)$" },
	float = true,
})
hl.window_rule({
	name = "dolphin-copying",
	match = { class = "^(org.kde.dolphin)$", title = "^(Copying — Dolphin)$" },
	float = true,
})
hl.window_rule({
	name = "kitty-top-monitors",
	match = { class = "^(kitty)$", title = "^([bh]?top)$" },
	float = true,
})
hl.window_rule({
	name = "xdg-desktop-portal-gtk-fix",
	match = { class = "^([Xx]dg-desktop-portal-gtk)$" },
	float = true,
})
hl.window_rule({
	name = "open-file-initial-title",
	match = { initial_title = "^(Open File)$" },
	float = true,
})

-- Specific Window Size Exceptions
hl.window_rule({
	name = "kcalc-size",
	match = { class = "^(org.kde.kcalc)$" },
	float = true,
	size = "748 463",
})

hl.window_rule({
	name = "mpv-player-size",
	match = { class = "^mpv$" },
	float = true,
	size = "1150 644",
	center = true,
})
