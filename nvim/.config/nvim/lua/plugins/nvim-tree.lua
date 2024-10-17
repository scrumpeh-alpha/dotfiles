return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    swap_then_open_tab = function()
        local api = require("nvim-tree.api")
        local node = api.tree.get_node_under_cursor()
        vim.cmd("wincmd l")
        api.node.open.tab(node)
    end,
    config = function()
        require("nvim-tree").setup {}
        vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {})
    end,
}
