return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX (read github, its a ftplugin)
	init = function()
		vim.g.vimtex_view_method = "zathura"
	end,
}
