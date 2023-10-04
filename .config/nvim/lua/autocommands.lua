-- Disble auto commenting
vim.api.nvim_create_autocmd('Filetype',
        {pattern = '*',
        command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'})

-- -- Termdebug commands
vim.api.nvim_create_autocmd('User',
        {pattern = 'TermdebugStartPre',
        command = 'setlocal splitright! splitbelow!'})

vim.api.nvim_create_autocmd('User',
        {pattern = 'TermdebugStartPost',
        command = 'setlocal splitright splitbelow'})

-- -- Auto switch to normal mode after inactivity
vim.api.nvim_create_autocmd('CursorHoldI',
        {pattern = '*',
        command = 'stopinsert'})

vim.api.nvim_create_autocmd('InsertEnter',
        {pattern = '*',
        command = 'let updaterestore=&updatetime | set updatetime=5000'})

vim.api.nvim_create_autocmd('InsertLeave',
        {pattern = '*',
        command = 'let &updatetime=updaterestore'})
