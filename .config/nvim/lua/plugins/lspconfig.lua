require("lspconfig")
require'lspconfig'.lua_ls.setup{
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
}
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}

vim.diagnostic.config({ virtual_text = false })
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
