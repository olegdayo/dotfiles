local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- config.color_scheme = 'AdventureTime'
config.font_size = 10
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
