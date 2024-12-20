return {
    {
        "jaredgorski/SpaceCamp",
        priority = 998,
        config = function()
            vim.cmd.colorscheme "spacecamp"
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 999,
        config = function()
            flavour="macchiato"
            vim.cmd.colorscheme "catppuccin"
        end,
    },
    {
       "EdenEast/nightfox.nvim",
        priority=1000,
        config = function()
            vim.cmd.colorscheme "carbonfox"
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1001,
        opts = {},
        config = function()
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },
}
