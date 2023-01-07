-- Quick save
vim.keymap.set('', '<A-Return>'  , '<Esc>:w<cr>',  {desc = 'save file'})            -- Alt + Enter 

-- Global Copy
vim.keymap.set('', '<C-y>'       , '"+y<Esc>',     {desc = 'Copyy to " buffer'})    -- Ctrl + y

-- Escape from terminal buffer
vim.keymap.set('t', '<Esc>'       , '<C-\\><C-n>',     {desc = "Escape from terminal", silent = true})    -- Escape

-- Split Movements
vim.keymap.set('', '<A-Left>' , '<C-w>h', {desc = 'goto Left split'})       -- Alt + Left
vim.keymap.set('', '<A-Right>', '<C-w>l', {desc = 'goto Right split'})      -- Alt + Right
vim.keymap.set('', '<A-Up>'   , '<C-w>k', {desc = 'goto Up split'})         -- Alt + Up
vim.keymap.set('', '<A-Down>' , '<C-w>j', {desc = 'goto Down split'})       -- Alt + Down

-- Split resize
vim.keymap.set('', '<A-S-Left>'  , '<Esc>:vert res -5<cr>', {silent = true})      -- Alt + Shift + Left
vim.keymap.set('', '<A-S-Right>' , '<Esc>:vert res +5<cr>', {silent = true})      -- Alt + Shift + Right
vim.keymap.set('', '<A-S-Up>'    , '<Esc>:res +5<cr>',      {silent = true})      -- Alt + Shift + Up
vim.keymap.set('', '<A-S-Down>'  , '<Esc>:res -5<cr>',      {silent = true})      -- Alt + Shift + Down

-- Disable arrow keys
vim.keymap.set('', '<Left>' ,  '<nop>', {silent = true})
vim.keymap.set('', '<Right>' , '<nop>', {silent = true})
vim.keymap.set('', '<Up>' ,    '<nop>', {silent = true})
vim.keymap.set('', '<Down>' ,  '<nop>', {silent = true})

-- Buffer keybinds
vim.keymap.set('', '<Leader>n', '<cmd>bn<cr>', {silent = true})                   -- Leader + n
vim.keymap.set('', '<Leader>p', '<cmd>bp<cr>', {silent = true})                   -- Leader + p
vim.keymap.set('', '<Leader>d', '<cmd>bd | bp<cr>', {silent = true})              -- Leader + d
