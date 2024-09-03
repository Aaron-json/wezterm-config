local wezterm = require('wezterm')

local backgrounds = {
    background1 = {
        {
            source = {
                File = wezterm.config_dir .. '/images/background1.jpg',
            },
            hsb = { brightness = 0.5 },
        }
    },
    background2 = {
        {
            source = {
                File = wezterm.config_dir .. '/images/background2.jpg',
            },
            hsb = { brightness = 0.08 },
        }
    },
    background3 = {
        {
            source = {
                File = wezterm.config_dir .. '/images/background3.jpg'
            },
            hsb = { brightness = 0.06 },

        }
    }
}

local config = {}

config.font_dirs = { wezterm.config_dir .. "/fonts" }

config.font_size = 12

config.font = wezterm.font_with_fallback({
    { family = 'Cascadia Code' },
    { family = 'JetBrains Mono' },
})

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
    config.default_prog = { 'powershell.exe' }
end

config.background = backgrounds.background3

return config
