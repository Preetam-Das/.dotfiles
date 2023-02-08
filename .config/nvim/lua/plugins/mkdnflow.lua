require('mkdnflow').setup({
    links = {
        conceal = true,
        transform_explicit = function(text)
            text = text:gsub(" ", "_")
            text = text:lower()
            text = text
            return(text)
        end
    },
     mappings = {
        MkdnEnter = {{'n', 'v'}, '<leader><CR>'},
        MkdnDestroyLink = {'n', '<leader><M-CR>'},
        MkdnNewListItem = {'i', '<CR>'}
    }
})
