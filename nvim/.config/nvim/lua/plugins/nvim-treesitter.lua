return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- For syntax highlighting
            ensure_installed = { "lua", "python", "c", "vim", "html", "cpp", "latex" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
