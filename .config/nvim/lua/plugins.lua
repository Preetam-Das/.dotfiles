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

    'NvChad/nvim-colorizer.lua',
    {'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        lazy = false,
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"nvim-tree/nvim-web-devicons", lazy=true},
    'stevearc/oil.nvim',
    {"kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
            })
        end
    },
    'neovim/nvim-lspconfig',
    {"nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {},
                    ["core.dirman"] = {
                    config = {
                        workspaces = {
                            Notes = "~/Notes",
                        },
                    },
                },
            },
        }
    end,
  },
  'nvim-lualine/lualine.nvim',
  {"ibhagwan/fzf-lua",
      -- optional for icon support
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
          -- calling `setup` is optional for customization
          require("fzf-lua").setup({})
      end
  },
})
