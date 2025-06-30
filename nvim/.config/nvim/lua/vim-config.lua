-- vim.opt.guicursor = "n-v-i-c:ver75"
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set backspace=indent,eol,start")

-- clipboard
-- vim.cmd("set clipboard+=unnamedplus")
vim.keymap.set({'n', 'v'}, '<C-C>', '"+y', { noremap = true, silent = true })

--  KEYBINDINGS --

-- Disabled, trying default bindings for now
-- vim.keymap.set("n", "<C-h>", "<C-w>h", {desc="Move to left window"})
-- vim.keymap.set("n", "<C-l>", "<C-w>l", {desc="Move to right window"})
-- vim.keymap.set("n", "<C-j>", "<C-w>j", {desc="Move to up window"})
-- vim.keymap.set("n", "<C-k>", "<C-w>k", {desc="Move to down window"})
vim.keymap.set("n", "<Esc>", "<cmd> noh <CR>", {desc="Clear highlights"})

-- primeagen keybindings
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set('i', "<C-BS>", "<C-W>")

-- vim.keymap.set("i", "{", "{}<left>", {})

-- colorscheme
vim.cmd.colorscheme("oxocarbon")
vim.cmd("set bg=dark")
