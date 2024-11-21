local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- show meaningful characters
config.front_end = "WebGpu"

-- configure colorscheme
config.color_scheme = 'GruvboxDark'
config.colors = {
  tab_bar = {
    active_tab = {
      fg_color = '#ebdbb2',
      bg_color = '#282828',
    },
  },
};

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font 'JetBrainsMonoNF'
config.font_size = 12.0

-- toggle background opacity
wezterm.on("toggle-opacity", function(window, _)
  local overrides = window:get_config_overrides() or {}
  if not overrides.window_background_opacity then
    overrides.window_background_opacity = 0.8
    overrides.text_background_opacity = 0.8
  else
    overrides.window_background_opacity = nil
    overrides.text_background_opacity = nil
  end
  window:set_config_overrides(overrides)
end)

-- keybinds
config.keys = {
  -- press ctrl+shift+y to toggle transparent background
  {
    key = 'Y',
    mods = 'CTRL',
    action = wezterm.action.EmitEvent 'toggle-opacity',
  },
  -- close current pane
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- split current pane
  {
    key = 't',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'T',
    mods = 'ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- navigate panes
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  -- resize panes
  {
    key = 'H',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'J',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'K',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Up', 5 } },
  {
    key = 'L',
    mods = 'CTRL',
    action = wezterm.action.AdjustPaneSize { 'Right', 5 },
  },
}

return config
