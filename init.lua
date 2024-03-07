-- environment setup:
-- 1. install clangd from microsoft visual studio setup
-- 2. from cmd execute 'winget install ripgrep', used for telescope live_grep
-- 3. make sure both clangd and rg.exe (ripgrep) are in the system path

vim.opt.compatible = false


-- IsValid's neovide conf, ref https://neovide.dev/configuration.html#configuration
if vim.g.neovide then
    -- FONT
    vim.o.guifont = "OpenDyslexicM Nerd Font:h13"

    -- TRANSPARENCY
    vim.g.neovide_transparency = 0.87

    -- BLUR
    vim.g.neovide_floating_shadow = true
    vim.g.neovide_floating_z_height = 10
    vim.g.neovide_light_angle_degrees = 45
    vim.g.neovide_light_radius = 5

    -- SHADOW
    vim.g.neovide_floating_shadow = true
    vim.g.neovide_floating_z_height = 10
    vim.g.neovide_light_angle_degrees = 45
    vim.g.neovide_light_radius = 5

    -- PADDING
    vim.g.neovide_padding_top = 0
    vim.g.neovide_padding_bottom = 0
    vim.g.neovide_padding_right = 0
    vim.g.neovide_padding_left = 0

    -- FIX BORDER & WINBAR SCROLLING GLITCHES
    -- vim.g.neovide_unlink_border_highlights = true
end

require("isvalid")
