local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "Tokyo Night"
config.font = wezterm.font("Cascadia Code")

config.default_prog = { "pwsh.exe", "-NoLogo" }

config.disable_default_key_bindings = true

config.enable_tab_bar = false
-- config.window_decorations = "RESIZE"

config.window_background_opacity = 0.9

config.window_padding = {
	left = 3,
	right = 3,
	top = 2,
	bottom = 2,
}

-- timeout_milliseconds defaults to 1000 and can be omitted
config.keys = {
	{
		key = "\\",
		mods = "ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "Backspace",
		mods = "ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = act.ActivatePaneDirection("Down"),
	},
	{ key = "[", mods = "ALT", action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = "ALT", action = act.ActivateTabRelative(1) },
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	-- paste from the clipboard
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	-- paste from the primary selection
	{ key = "V", mods = "CTRL", action = act.PasteFrom("PrimarySelection") },
	{
		key = "F11",
		mods = "",
		action = wezterm.action.ToggleFullScreen,
	},
	{ key = "Enter", mods = "ALT", action = act.SpawnTab("DefaultDomain") },
	{
		key = "LeftArrow",
		mods = "ALT",
		action = act.AdjustPaneSize({ "Left", 2 }),
	},
	{
		key = "DownArrow",
		mods = "ALT",
		action = act.AdjustPaneSize({ "Down", 2 }),
	},
	{ key = "UpArrow", mods = "ALT", action = act.AdjustPaneSize({ "Up", 2 }) },
	{
		key = "RightArrow",
		mods = "ALT",
		action = act.AdjustPaneSize({ "Right", 2 }),
	},
	{ key = "-", mods = "CTRL", action = wezterm.action.DecreaseFontSize },
	{ key = "=", mods = "CTRL", action = wezterm.action.IncreaseFontSize },
}

return config
