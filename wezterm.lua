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
            hsb = { brightness = 0.04 },
        }
    }
}
return {
    font_dirs = { wezterm.config_dir .. "/fonts" },
    font_size = 12,
    font = wezterm.font_with_fallback({
        { family = 'Cascadia Code'},
        { family = 'JetBrains Mono' },
    }),
    background = backgrounds.background2
}
