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
                -- ensure_installed = { "lua_ls", "ruff", "pylsp", "pyright", "clangd", "texlab", "cssls", "html" },
				ensure_installed = { "lua_ls", "ruff", "pyright", "clangd", "texlab", "cssls", "html" },
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
			lspconfig.pylsp.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.texlab.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
            -- lspconfig.pyright.setup({
				-- capabilities = capabilities,
            -- })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
