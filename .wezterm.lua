local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.scrollback_lines = 100000
config.font_size = 13
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
    {
      key = '\\',
      mods = 'SUPER',
      action = wezterm.action.SplitHorizontal,
    },
    {
        key = '/',
        mods = 'SUPER',
        action = wezterm.action.SplitVertical,
    },
    {
        key = 'w',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentTab{confirm=true},
    },
    {
        key = 't',
        mods = 'CTRL',
        action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = 'w',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentTab{confirm=true},
    },
    {
        key = 'Backspace',
        mods = 'CTRL',
        action = wezterm.action.SendKey {
            key = 'Backspace',
            mods = 'ALT',
        },
    },
}

return config
