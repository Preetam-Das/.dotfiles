local augroup = vim.api.nvim_create_augroup('group', { clear = true })

-- Disble auto commenting
vim.api.nvim_create_autocmd('Filetype',
		{pattern = '*',
		group = augroup,
		command = 'setlocal formatoptions-=c formatoptions-=r formatoptions-=o'})

-- Termdebug commands
vim.api.nvim_create_autocmd('User',
		{pattern = 'TermdebugStartPre',
		group = augroup,
		command = 'setlocal splitright! splitbelow!'})

vim.api.nvim_create_autocmd('User',
		{pattern = 'TermdebugStartPost',
		group = augroup,
		command = 'setlocal splitright splitbelow'})
