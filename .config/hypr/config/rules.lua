-- ▄▄▌ ▐ ▄▌▪   ▐ ▄ ·▄▄▄▄  ▄▄▌ ▐ ▄▌    ▄▄▄  ▄• ▄▌▄▄▌  ▄▄▄ ..▄▄ ·
-- ██· █▌▐███ •█▌▐███▪ ██ ██· █▌▐█    ▀▄ █·█▪██▌██•  ▀▄.▀·▐█ ▀.
-- ██▪▐█▐▐▌▐█·▐█▐▐▌▐█· ▐█▌██▪▐█▐▐▌    ▐▀▀▄ █▌▐█▌██▪  ▐▀▀▪▄▄▀▀▀█▄
-- ▐█▌██▐█▌▐█▌██▐█▌██. ██ ▐█▌██▐█▌    ▐█•█▌▐█▄█▌▐█▌▐▌▐█▄▄▌▐█▄▪▐█
--  ▀▀▀▀ ▀▪▀▀▀▀▀ █▪▀▀▀▀▀•  ▀▀▀▀ ▀▪    .▀  ▀ ▀▀▀ .▀▀▀  ▀▀▀  ▀▀▀▀
--
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
	match = {
		class = ".*",
	},

	border_size = 1,
	border_color = "rgb(333399)",
})

-- Workspace rules
hl.workspace_rule({ workspace = "special:magic", layout = "dwindle" })

-- Layer rules
hl.layer_rule({
	match = {
		namespace = "swaync-control-center",
	},

	animation = "slide right",
})

hl.layer_rule({
	match = {
		namespace = "awww-daemon|selection",
	},

	no_anim = true,
})

hl.window_rule({
	float = true,
	match = {
		class = "org.telegram.desktop",
		title = "^(Media viewer)",
	},
})
hl.window_rule({ float = true, match = { class = "zenity", title = "^(Winetricks -)(.*)|winetricks" } })

hl.window_rule({
	name = "discord",
	match = {
		class = "discord",
		title = "^discordapp.com/app?.*$",
	},
	float = true,
	move = "center center",
	monitor = "0",
	workspace = "3",
})

hl.window_rule({
	name = "steam friends list",
	match = {
		class = "steam",
		title = "Friends List",
	},

	float = true,
	move = "center center",
	size = "400 700",
})

hl.window_rule({
	match = {
		class = "org.telegram.desktop",
		title = "^Telegram.*",
	},

	border_size = 1,
	border_color = "rgb(293A4C)",
	size = "500 680",
	move = "20 200",
	float = true,
	monitor = "0",
})

hl.window_rule({
	match = {
		class = "flameshot",
		title = "Configuration",
	},

	float = true,
	fullscreen = false,
	size = "500 680",
	move = "center center",
})

hl.window_rule({
	match = {
		class = "gribcord",
	},

	monitor = "0",
	float = true,
	size = "700 700",
	move = "1200 200",
})

hl.window_rule({ stay_focused = true, match = { class = "xfce-polkit" } })
hl.window_rule({ stay_focused = true, match = { title = "^(Rename device)$", class = "blueman-manager" } })

-- Tags
hl.window_rule({ float = true, match = { tag = "float" } })
hl.window_rule({ opacity = 1, match = { tag = "opaque" } })
hl.window_rule({ border_size = 2, match = { tag = "bordered" } })

hl.window_rule({
	name = "Float by title",
	match = {
		title = "Font Manager|Volume Control|Qalculate!|Library|Add bookmark",
	},

	float = true,
	center = true,
	persistent_size = true,
})

hl.window_rule({
	name = "Float by class",
	match = {
		class = "blueman-manager|blueman-services|nwg-look|rog-control-center|org.qbittorrent.qBittorrent|kvantummanager|\
                 org.gnome.seahorse.Application|xfce-polkit|org.polymc.PolyMC|engrampa|nm-connection-editor|system-config-printer|hyprland-share-picker|\
                 org.bleachbit.BleachBit|vlc|exo-desktop-item-edit|xdg-desktop-portal-gtk|org.gnome.eog|qt6ct|xfce-polkit",
	},

	float = true,
	center = true,
	persistent_size = true,
})

hl.window_rule({
	name = "Thunar dialogs",
	match = {
		class = "thunar|Thunar",
		title = 'Rename "*.*"|File Operation Progress|Confirm to replace files|Attention',
	},

	float = true,
	persistent_size = true,
})

hl.window_rule({
	name = "Thunar stayfocused",
	match = {
		class = "thunar|Thunar",
		title = 'Attention|Rename "*.*"|Create Document from .*|New .* ...|Create New Folder',
	},

	stay_focused = true,
})

hl.window_rule({
	name = "Thunar move right bottom",
	match = {
		title = "^(File Operation Progress)$",
		class = "(thunar|Thunar)",
	},

	focus_on_activate = false,
	move = "1460 970",
})

hl.window_rule({
	name = "Thunar menu force center",
	match = {
		title = "^(Confirm to replace files)$",
		class = "(thunar|Thunar)",
	},

	center = true,
})

hl.window_rule({
	name = "Small window size",
	match = {
		class = "org.gnome.seahorse.Application|org.polymc.PolyMC|nwg-look",
	},

	size = "900 600",
	center = true,
})

hl.window_rule({
	name = "Scrolling almost full width",
	match = {
		class = "codium|vesktop|zen",
	},

	scrolling_width = 0.95,
})

hl.window_rule({
	name = "Alacritty opacity and border",
	match = {
		class = "Alacritty|peaclock",
	},

	opacity = "0.95 0.9",
	border_size = 2,
})

hl.window_rule({
	name = "Zen/firefox Picture in Picture",
	match = {
		title = "Picture-in-Picture",
		class = "^(zen)(.*)$",
	},

	size = "300 200",
	move = "1600 50",
	border_size = 2,
	pin = true,
	float = true,
	no_initial_focus = true,
	focus_on_activate = true,
	keep_aspect_ratio = true,
})

hl.window_rule({
	name = "Chromium",
	match = {
		class = "chromium",
	},
})

hl.window_rule({
	name = "Chromium modal",
	match = {
		class = "chromium",
		initial_title = "about:blank .*",
	},

	float = true,
})

hl.window_rule({
	name = "Chromium DevTools",
	match = {
		class = "chromium",
		initial_title = "DevTools.*",
	},

	monitor = "0",
	--    no_focus = true,
	--    no_initial_focus = true,
})

hl.window_rule({
	-- TODO fullscreens all wine apps
	name = "Games in fullscreen",
	match = {
		class = "steam_app_.*",
	},

	fullscreen = true,
})

hl.window_rule({
	name = "Spotify pseudotile", -- Extra gaps for Spotify
	match = {
		class = "spotify|Spotify",
	},

	pseudo = true,
	size = "1850 1000",
	scrolling_width = 1,
	float = true,
	--    workspace = 5
})

hl.window_rule({
	name = "peaclock terminal",
	match = {
		class = "peaclock",
	},

	float = true,
	pin = true,
	size = "500 260",
	move = "711 60",
})

hl.window_rule({
	name = "Dev-tools",
	match = {
		title = "^(DevToolsApp)$",
	},

	float = true,
	move = "50% 15%",
	size = "900 600",
})

hl.window_rule({
	name = "Flameshot",
	match = {
		class = "flameshot",
	},
	float = true,
	fullscreen = true,
})

hl.window_rule({
	name = "Uzerburg",
	match = {
		class = "ueberzugpp(.*)",
	},

	float = true,
	no_initial_focus = true,
})
