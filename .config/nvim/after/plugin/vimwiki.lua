vim.g.vimwiki_list       = {{path= '~/notes/', syntax= 'markdown', ext= '.md', auto_tags=1}}
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_folding    = 'custom'

-- KEYBINDS
vim.keymap.set('', '<Leader><cr>'  , '<Plug>VimwikiFollowLink',  {desc = 'save file'})
