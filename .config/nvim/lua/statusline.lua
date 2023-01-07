vim.api.nvim_exec([[
    set statusline =
    set statusline +=[%n]                                    " buffer number
    set statusline +=\ %F                                    " Full path to file
    set statusline +=\ %1*%m%0*                              " modified flag
    set statusline +=\ %h                                    " [help]
    set statusline +=%r                                      " read only flag
    set statusline +=%w                                      " preview window flag
    set statusline +=%=%-14.(%l,%c%V%)                       " Line, column-virtual column"
    set statusline +=%=lines:\ %-5L                          " Lines in the buffer
]], false)
