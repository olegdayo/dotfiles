local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.scrollback_lines = 100000

config.font_size = 9
config.keys = {
    {
      key = '\\',
      mods = 'CTRL',
      action = wezterm.action.SplitHorizontal,
    },
    {
        key = '/',
        mods = 'CTRL',
        action = wezterm.action.SplitVertical,
    },
}

return config
