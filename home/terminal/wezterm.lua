local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- show meaningful characters
config.front_end = "WebGpu"

-- configure colorscheme
config.color_scheme = 'GruvboxDark'

config.font = wezterm.font 'JetBrainsMonoNF'
config.font_size = 12.0;

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
  {
    -- press ctrl+shift+y to toggle transparent background
    key = 'Y',
    mods = 'CTRL',
    action = wezterm.action.EmitEvent 'toggle-opacity',
  },
}

return config
