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

			local lspconfig = require("lspconfig")

			--Config lsp for each lang here as follows
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ruff.setup({
				capabilities = capabilities,
			})
			-- lspconfig.pylsp.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.clangd.setup({
			-- 	capabilities = capabilities,
			-- })
			lspconfig.texlab.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			-- lspconfig.html.setup({
			-- 	capabilities = capabilities,
			-- })
            lspconfig.emmet_ls.setup({
                capabilities=capabilities,
            })

			-- lspconfig.pyright.setup({
			-- 	capabilities = capabilities,
			-- })
            lspconfig.ts_ls.setup({
                capabilities=capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show LSP Info" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename variable" })
		end,
	},
}
