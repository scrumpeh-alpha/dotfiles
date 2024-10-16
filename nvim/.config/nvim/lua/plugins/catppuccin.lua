
return {
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000,
    config = function()
        flavour="macchiato"
        vim.cmd.colorscheme "catppuccin"
    end,
}
