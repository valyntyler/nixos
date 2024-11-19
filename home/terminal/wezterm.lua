local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- show meaningful characters
config.front_end = "WebGpu"

config.font = wezterm.font 'JetBrainsMonoNF'
config.color_scheme = 'GruvboxDark'

return config
