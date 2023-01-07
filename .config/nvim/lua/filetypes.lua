local mdgroup   = vim.api.nvim_create_augroup('markdown', { clear = true })
local vimwgroup = vim.api.nvim_create_augroup('vimwiki', { clear = true })

-- Markdown <<FS>>
-- Set columncolor to restrict line width 
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'markdown',
		group = mdgroup,
		command = 'setlocal colorcolumn=100'})

-- Set cursorline for markdown files
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'markdown',
		group = mdgroup,
		command = 'set cursorline'})

-- Set comment string for vimwiki files
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'markdown',
		group = mdgroup,
		command = 'setlocal commentstring=<!--%s--'})

-- Set conceallevel for markdown files
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'markdown',
		group = mdgroup,
		command = 'set conceallevel=2'})

-- Set spellchecker for markdowns
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'markdown',
		group = mdgroup,
		command = 'setlocal spell spelllang=en_gb'})
-- <<FE>>

-- Vimwiki<<FS>>
-- Set spellchecker for vimwikis
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'vimwiki',
		group = vimwgroup,
		command = 'setlocal spell spelllang=en_gb'})

-- Set comment string for vimwiki files
vim.api.nvim_create_autocmd('Filetype',
		{pattern = 'vimwiki',
		group = vimwgroup,
		command = 'setlocal commentstring=<!--%s-->'})-- <<FE>>

