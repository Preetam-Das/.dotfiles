-- Markdown settings
vim.api.nvim_create_autocmd('BufNewFile',
        {pattern = '*.md',
        command = 'setlocal syntax=markdown'})

vim.api.nvim_create_autocmd('BufRead',
        {pattern = '*.md',
        command = 'setlocal syntax=markdown'})

vim.api.nvim_create_autocmd('BufRead',
        {pattern = '*.md',
        command = 'setlocal conceallevel=2'})

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set awa"})

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set colorcolumn=90"})

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set cursorline"})
