-- vim.opt.guicursor = "n-v-i-c:ver75"

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.backspace = "indent,eol,start"
vim.opt.scrolloff = 4

vim.opt.swapfile = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.colorcolumn = "100"

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
vim.opt.background = "dark"
vim.cmd.colorscheme("oxocarbon")

-- transparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- vim.cmd('autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")')

vim.keymap.set("n", "<leader>dq", function()
  vim.diagnostic.setqflist({ open = true })
end, { desc = "Send Diagnostics To Quickfix List and open" })


-- Treesitter: Have to manually start with autocmd
vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'markdown', 'lua', 'vim', 'c', 'cpp', 'glsl', 'python', 'rust', 'typst', 'latex', 'typescript', 'javascript', 'html', 'css', 'java', },
	callback = function() vim.treesitter.start() end,
})
