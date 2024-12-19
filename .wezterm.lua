local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local SOLID_LEFT_CIRCLE = wezterm.nerdfonts.ple_left_half_circle_thick
local SOLID_RIGHT_CIRCLE = wezterm.nerdfonts.ple_right_half_circle_thick

config.color_scheme = 'Tokyo Night Storm'
config.term = 'xterm-256color'

config.window_decorations = 'NONE'
config.window_background_opacity = 0.95

-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

config.window_padding = {
  bottom = 0,
}

config.keys = {
  {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
}

return config
