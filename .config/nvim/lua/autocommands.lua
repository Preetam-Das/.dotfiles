local augroup = vim.api.nvim_create_augroup('filetype_cmds', { clear = true })

-- Set comment string for vimwiki files
vim.api.nvim_create_autocmd('Filetype', 
		{pattern = 'vimwiki', 
		group = augroup, 
		command = 'setlocal commentstring=<!--%s-->'})

-- Set cursorline for markdown files
vim.api.nvim_create_autocmd('Filetype', 
		{pattern = 'markdown', 
		group = augroup, 
		command = 'set cursorline'})

-- Set conceallevel for markdown files
vim.api.nvim_create_autocmd('Filetype', 
		{pattern = 'markdown', 
		group = augroup, 
		command = 'set conceallevel=2'})

-- Disble auto commenting
vim.api.nvim_create_autocmd('Filetype', 
		{pattern = '*', 
		group = augroup, 
		command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'})
