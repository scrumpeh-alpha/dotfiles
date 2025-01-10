vim.opt.guicursor = "n-v-i-c:ver75"
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")

-- clipboard
vim.cmd("set clipboard+=unnamedplus")

-- keybindings
vim.keymap.set("n", "<C-h>", "<C-w>h", {desc="Move to left window"})
vim.keymap.set("n", "<C-l>", "<C-w>l", {desc="Move to right window"})
vim.keymap.set("n", "<C-j>", "<C-w>j", {desc="Move to up window"})
vim.keymap.set("n", "<C-k>", "<C-w>k", {desc="Move to down window"})
vim.keymap.set("n", "<Esc>", "<cmd> noh <CR>", {desc="Clear highlights"})

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- vim.keymap.set("i", "{", "{}<left>", {})

-- colorscheme
vim.cmd.colorscheme "wildcharm"
vim.cmd("set bg=dark")
