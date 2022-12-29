vim.g.mapleader        = ' '                         -- set the leader key
vim.cmd('colorscheme uwu')

-- boolean options
vim.opt.number         = true                        -- set number
vim.opt.relativenumber = true                        -- set relative numbering
vim.opt.swapfile       = false                       -- set autoindent
vim.opt.splitbelow     = true                        -- set split to below
vim.opt.splitright     = true                        -- set split to right
vim.opt.wildmenu       = true                        -- set wildmenu
vim.opt.autoindent     = true                        -- set autoindent
vim.opt.termguicolors  = true                        -- set termguicolors

-- valued options
vim.opt.scrolloff      = 5                           -- set scroll offset
vim.opt.tabstop        = 4                           -- set tabstop value
vim.opt.shiftwidth     = 4                           -- set tab shift value
vim.opt.foldmethod     = 'marker'                    -- set foldmethod to marker 
vim.opt.foldmarker     = ' blockStart, blockEnd'     -- set foldmarker
vim.opt.filetype       = on                          -- set filetype
vim.opt.inccommand     = 'nosplit'                   -- show edit while substition
