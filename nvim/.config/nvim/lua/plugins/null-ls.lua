return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                --lua
                null_ls.builtins.formatting.stylua,
                --javascript
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
                --python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                --java,c++
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}

                --null_ls.builtins.diagnostics.rubocop,
                --null_ls.builtins.formatting.rubocop,
