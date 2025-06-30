return {
	"chomosuke/typst-preview.nvim",
	lazy = false, -- or ft = 'typst'
	version = "1.*",
	opts = {}, -- lazy.nvim will implicitly calls `setup {}`
	config = function()
		require("typst-preview").setup({
			dependencies_bin = { ["tinymist"] = "/home/scrumpeh/.local/share/nvim/mason/bin/tinymist" },
            port=5252,
		})

        vim.keymap.set("n", "<leader>tp", ":TypstPreview<CR>:<BS>");
	end,
}
