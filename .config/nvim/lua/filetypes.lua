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

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set colorcolumn=80"})

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set cursorline"})

vim.api.nvim_create_autocmd("FileType", {pattern = "markdown", command = "set textwidth=80"})

-- Norg settings

vim.api.nvim_create_autocmd("FileType", {pattern = "norg", command = "set awa"})

vim.api.nvim_create_autocmd("FileType", {pattern = "norg", command = "set colorcolumn=80"})

vim.api.nvim_create_autocmd("FileType", {pattern = "norg", command = "set cursorline"})

vim.api.nvim_create_autocmd("FileType", {pattern = "norg", command = "set textwidth=80"})

