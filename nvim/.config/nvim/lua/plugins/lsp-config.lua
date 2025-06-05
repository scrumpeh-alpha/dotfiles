return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- Add languages for lsp here
				-- ensure_installed = { "lua_ls", "ruff", "pylsp", "pyright", "clangd", "texlab", "cssls", "html", "ts_ls", "emmet_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Updated to new standard
			-- Old syntax resulted in LSP launching twice

			local languages = {
				"lua_ls",
				"ruff",
				"pylsp",
				"pyright",
				"clangd",
				"texlab",
				"cssls",
				"html",
				"ts_ls",
				"emmet_ls",
                "cmake",
			}
            -- Enable all languages in list
			vim.lsp.enable(languages)

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show LSP Info" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename variable" })
		end,
	},
}
