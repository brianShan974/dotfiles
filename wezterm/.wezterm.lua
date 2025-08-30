-- load the wezterm api
local wezterm = require("wezterm")
local config = wezterm.config_builder()
local home_dir = os.getenv("HOME")

-- background
local dimmer = { brightness = 0.3, hue = 1.0, saturation = 1.0 }
config.window_background_image = home_dir .. "/.config/wezterm/wp12669729-mclaren-senna-4k-wallpapers.jpg"
config.window_background_image_hsb = dimmer

-- font
config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 15

-- fullscreen
local mux = wezterm.mux
local fullscreen = function(cmd)
	local _, _, window = mux.spawn_window(cmd or {}) -- tab pane window
	window:gui_window():toggle_fullscreen()
end
wezterm.on("gui-startup", fullscreen)
config.native_macos_fullscreen_mode = true

-- scrollbar
config.enable_scroll_bar = false
config.min_scroll_bar_height = "2cell"
config.colors = {
	scrollbar_thumb = "white",
}

-- tab bar
config.enable_tab_bar = false

-- window decorations
config.window_decorations = "RESIZE"

return config
