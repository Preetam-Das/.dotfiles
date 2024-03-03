require("lazy").setup({

    -- COLORSHEMES
    "sekke276/dark_flat.nvim",
    "rebelot/kanagawa.nvim",
    "daschw/leaf.nvim",
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {"neanias/everforest-nvim",
        version = false,
        lazy = false,
        priority = 1000, -- make sure to load this before all the other start plugins
    },
     'navarasu/onedark.nvim',

     -- COLORIZER
     {'NvChad/nvim-colorizer.lua', lazy = true},

    -- COMMENT
    {'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },

    --  TREESITTER
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-tree/nvim-web-devicons", lazy=true},

    -- OIL
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = true
    },
    -- 'stevearc/oil.nvim',

    -- SORROUND
    {"kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    },

    -- LSP
    'neovim/nvim-lspconfig',

    -- NEORG
    {"nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Notes",
              },
            },
          },
        },
      }
    end,
    lazy = true,
    },

    -- STATUSLINE
    'nvim-lualine/lualine.nvim',

    -- FZF
    {"ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end,
        lazy = true,
    },

    -- Markdwon Preview
    {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    lazy = true,
    },

    -- Kitty Scrollback
    {
    'mikesmithgh/kitty-scrollback.nvim',
    enabled = true,
    lazy = true,
    cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
    event = { 'User KittyScrollbackLaunch' },
     version = '^4.0.0', -- pin major version, include fixes and features that do not have breaking changes
    config = function()
      require('kitty-scrollback').setup()
    end,
  },
})
