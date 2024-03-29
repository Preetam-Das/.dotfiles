vim.g.mapleader        = ' '                         -- set the leader key
vim.diagnostic.config({ virtual_text = false,
                        float = true})
vim.o.guicursor = 'n-v-c:block-Cursor2/lCursor2,i-ci-ve:block-Cursor/lCursor,r-cr:hor20,o:hor50'
vim.o.conceallevel = 2

-- vim.opt.mouse          = ''
-- vim.opt.complete       = 'k'

-- Netrw Config
vim.g.netrw_banner     = 0                           -- Disable netrw banner

-- boolean options
vim.opt.number         = true                        -- set number
vim.opt.relativenumber = true                        -- set relative numbering
vim.opt.swapfile       = false                       -- set autoindent
vim.opt.splitbelow     = true                        -- set split to below
vim.opt.splitright     = true                        -- set split to right
vim.opt.wildmenu       = true                        -- set wildmenu
vim.opt.autoindent     = true                        -- set autoindent
vim.opt.termguicolors  = true                        -- set termguicolors
vim.opt.expandtab      = true                        -- set expandtab
vim.opt.list           = true
vim.opt.spell          = false

-- valued options
vim.opt.scrolloff      = 5                                                  -- set scroll offset
vim.opt.tabstop        = 4                                                  -- set tabstop value
vim.opt.shiftwidth     = 4                                                  -- set tab shift value
vim.opt.inccommand     = 'nosplit'                                          -- show edit while substition
vim.opt.inccommand     = 'nosplit'                                          -- show edit while substition
vim.opt.listchars      = {trail = '.', tab = '>--'}                         -- set list characters

-- global options
-- vim.g.markdown_fenced_languages = {'c', 'html', 'cpp', 'java'}
vim.g.termdebug_wide   = 1
