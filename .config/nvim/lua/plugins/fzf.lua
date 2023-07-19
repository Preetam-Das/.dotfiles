require('fzf-lua').setup{
    files = {
        cmd = "find .",
    },
}
vim.keymap.set('', '<C-g>'  , ':FzfLua live_grep<cr>',  {desc = 'open file'})
vim.keymap.set('', '<C-p>'  , ':FzfLua files<cr>',  {desc = 'open file'})
vim.keymap.set('', '<C-\\>'  , ':FzfLua buffers<cr>',  {desc = 'open file'})
vim.keymap.set('', '<C-l>'  , ':FzfLua lines<cr>',  {desc = 'open file'})
