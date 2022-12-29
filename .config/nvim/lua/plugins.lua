local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'norcalli/nvim-colorizer.lua'
Plug 'tpope/vim-commentary'
Plug('iamcco/markdown-preview.nvim', {['do'] = 'cd app && yarn install'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug 'nvim-treesitter/playground'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf.vim'

-- LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

--  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'

vim.call('plug#end')