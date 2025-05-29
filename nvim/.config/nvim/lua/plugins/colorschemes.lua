return {
	{
		"jaredgorski/SpaceCamp",
		priority = 998,
		config = function()
			-- vim.cmd.colorscheme("spacecamp")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 999,
		config = function()
			local flavour = "macchiato"
			-- vim.cmd.colorscheme "catppuccin"
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme "carbonfox"
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1001,
		opts = {},
		config = function()
			-- vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"Shatur/neovim-ayu",
	},
	{
		"vague2k/vague.nvim",
		config = function()
			require("vague").setup({ transparent = true })
			-- vim.cmd("colorscheme vague")
			-- vim.cmd(":hi statusline guibg=NONE")
		end,
	},
    {
        "nyoom-engineering/oxocarbon.nvim",
    },
    {
        "Mofiqul/vscode.nvim"
    },
}
