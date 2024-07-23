require('rose-pine').setup({
    disable_background = false,
    styles = {
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

local colorbuddy = require('colorbuddy')
colorbuddy.colorscheme("madcolors")
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local goups = colorbuddy.groups
local styles = colorbuddy.styles

Color.new('background', '#0b0b0b')
Color.new('statusline', '#0c0c0c')
Color.new('gray50', '#7f7f7f')
Color.new('idk', '#dab98f')
Color.new('burlywood3', '#a08563')
Color.new('darkgoldenrod3', '#cd950c')
Color.new('olivedrab', '#6b8e23')
Color.new('sienna3', '#cd6839')
Color.new('aquamarine3', '#478980')
Color.new('casey_type', '#d8a51d')
Color.new('casey_keyword', '#ac7b0b')
Color.new('line', '#070750')

Group.new('Normal', colors.burlywood3, colors.background)
Group.new('StatusLine', colors.burlywood3, colors.statusline)
Group.new('LineNr', colors.burlywood3, colors.statusline)
Group.new('Comment', colors.gray50)
Group.new('Function', colors.sienna3)
Group.new('@function.builtin', colors.sienna3)
Group.new('@function.method', colors.sienna3)
Group.new('Type', colors.casey_type)
Group.new('Include', colors.casey_type)
Group.new('@type.builtin', colors.casey_type, nil, nil)
Group.new('Keyword', colors.casey_keyword)
Group.new('@keyword.repeat', colors.casey_keyword)
Group.new('@keyword.conditional', colors.casey_keyword)
Group.new('@keyword.return', colors.casey_keyword)
Group.new('@keyword.operator', colors.casey_keyword)
Group.new('@keyword.directive.define', colors.idk)
Group.new('String', colors.olivedrab)
Group.new('Variable', colors.burlywood3)
Group.new('Delimiter', colors.burlywood3)
Group.new('@punctuation.delimiter', colors.burlywood3)
Group.new('@variable.parameter', colors.burlywood3)
Group.new('@variable.member', colors.burlywood3)
Group.new('@property', colors.burlywood3)
Group.new('@parameter', colors.burlywood3)
Group.new('@boolean', colors.olivedrab)
Group.new('@constructor', colors.sienna3)
Group.new('Operator', colors.burlywood3)
Group.new('@punctuation.bracket', colors.burlywood3)
Group.new('@number', colors.olivedrab)
Group.new('@module', colors.aquamarine3)
Group.new('@constant', nil, nil, nil)
Group.new('Constant', colors.aquamarine3, nil, nil)
Group.new('@constant.macro', colors.aquamarine3, nil, nil)
Group.new('@constant.builtin', nil, nil, nil)
Group.new('Special', colors.aquamarine3)
Group.new('@lsp.type.enumMember.cpp', colors.aquamarine3)
Group.new('PreProc', colors.aquamarine3)
Group.new('@keyword.import.cpp', colors.idk)
Group.new('@keyword.directive.cpp', colors.idk)
Group.new('@punctuation.special', colors.burlywood3)
Group.new('MatchParen', nil, nil, styles.bold)
Group.new('CursorLine', nil, colors.line)

function ColorMyPencils(color)
	color = color or "colorbuddy"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end

ColorMyPencils()
