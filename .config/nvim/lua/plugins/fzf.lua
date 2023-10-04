require('fzf-lua').setup{
    files = {
        cmd = "find .",
    },
}
vim.keymap.set('', '<C-p>'  , ':FzfLua files<cr>',  {desc = 'open file'})
vim.keymap.set('', '<C-b>'  , ':FzfLua buffers<cr>',  {desc = 'open buffers'})
vim.keymap.set('', '<C-l>'  , ':FzfLua lines<cr>',  {desc = 'lines'})
vim.keymap.set('', '<C-g>'  , ':FzfLua live_grep<cr>',  {desc = 'grep'})
