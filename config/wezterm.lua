-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Detect the operating system
local function get_os_name()
  local target_triple = wezterm.target_triple
  if string.find(target_triple, "windows") then
    return "Windows"
  elseif string.find(target_triple, "linux") then
    return "Linux"
  elseif string.find(target_triple, "darwin") then
    return "MacOS"
  else
    return "Unknown"
  end
end

local os_name = get_os_name()

-- Key binding to split the terminal
config.keys = {
  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Right', -- Splits the pane vertically
	  -- command = {cwd = wezterm.action.PaneInfo.current_working_dir }, -- Use the current working directory
    },
  },
  {
    key = 'O',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Down', -- Splits the pane vertically
    },
  },
  {
    key = '?',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.IncreaseFontSize,
  },
}

-- Changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 30

-- Changing the font size and color scheme.
config.font = wezterm.font('Cascadia Code', {weight  = 'Regular'})
config.font_size = 12
config.color_scheme = 'Synthwave Alpha (Gogh)'

-- Disabling notifications
config.audible_bell = "Disabled"
config.window_close_confirmation = "NeverPrompt"

-- OpenGL, WebGpu for GPU acceleration, Software for CPU
config.front_end = "WebGpu"
config.default_cursor_style = 'SteadyBlock'
config.animation_fps = 30

config.default_prog = {'/usr/bin/bash'}

if os_name == "Windows" then
  config.wsl_domains = {
	{
      name = 'WSL:Ubuntu',
      distribution = 'Ubuntu',
      username = "cj",
      default_cwd = "/home/cj/"
    }
  }
  config.default_domain = "WSL:Ubuntu"
end

-- Finally, return the configuration to wezterm:
return config