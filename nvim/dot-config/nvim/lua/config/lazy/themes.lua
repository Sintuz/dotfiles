return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                enable = {
                    terminal = true,
                },
                styles = {
                    italic = true,
                    bold = true,
                    transparency = true,
                },

                highlight_groups = {
                    Normal = { bg = "none" },
                    NormalFloat = { bg = "none" },

                    CurSearch = { fg = "base", bg = "leaf", inherit = false },
                    Search = { fg = "text", bg = "leaf", blend = 20, inherit = false },

                    TelescopeBorder = { fg = "highlight_high", bg = "none" },
                    TelescopeNormal = { bg = "none" },
                    TelescopePromptNormal = { bg = "none" },
                    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                    TelescopeSelection = { fg = "text", bg = "base" },
                    TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
                },
            })

            --vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                custom_highlights = function(colors)
                    return {
                        CurSearch = { bg = colors.sky },
                        IncSearch = { bg = colors.sky },
                    }
                end,
                integrations = {
                    mason = true,
                    fidget = true,
                },
            })

            vim.cmd.colorscheme("catppuccin")
        end
    },
}
