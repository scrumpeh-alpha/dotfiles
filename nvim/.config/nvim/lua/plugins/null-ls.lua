return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- formatting/diagnostic engines (Install with mason)
				--lua
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.diagnostics.luacheck,
				--javascript
				null_ls.builtins.formatting.prettier.with({
					command = "prettier",
					filetypes = { "javascript", "typescript", "typescriptreact", "json", "css", "html", "vue" },
				}),
				-- null_ls.builtins.diagnostics.eslint_d,
				--python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				--java,c++
				-- null_ls.builtins.formatting.clangd_format,
			},
		})

		-- vim formatting keybinding
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		-- vim diagnostics keybinding and settings
		vim.diagnostic.config({ virtual_text = true })
		vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float)
	end,
}

--null_ls.builtins.diagnostics.rubocop,
--null_ls.builtins.formatting.rubocop,
