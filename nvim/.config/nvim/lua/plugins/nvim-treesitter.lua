return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').setup {
            -- For syntax highlighting
            ensure_installed = { "lua", "python", "c", "vim", "html", "cpp", "latex" },
            auto_install = true,
            highlight = { enable = true },
            indent = {
                enable = true,
                -- disable tree-sitter indent temporarily cuz it doesn't work
                disable = { "c", "cpp" }
            },
        }
    end,
}
