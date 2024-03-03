-- Dark Flat
require("dark_flat").setup({
    transparent = true,
    colors = {},
    themes = function(colors)
        return {}
    end,
    italics = true,
})
vim.cmd("colorscheme dark_flat")
