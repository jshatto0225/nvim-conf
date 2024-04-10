require('rose-pine').setup({
    disable_background = true,
    styles = {
        bold = false,
        italic = false
    }
})

require('tokyonight').setup({
    transparent = false,
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
    },
})

require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = false,
    no_italic = true,
    no_bold = true
})

require('neosolarized').setup({
    background_set = false,
    commit_italics = true,
})

local colorbuddy = require('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local goups = colorbuddy.groups
local styles = colorbuddy.styles

Color.new('black', '#000000')
Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
Group.new('Visual', colors.none, colors.base03, styles.reverse)

function ColorMyPencils(color)
	color = color or "neosolarized"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end

ColorMyPencils()
