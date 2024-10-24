return {

    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        _Gopts = {
            position = "center",
            hl = "Type",
            wrap = "overflow",
        }

        local logo = [[


                                              
       ████ ██████           █████      ██
      ███████████             █████ 
      █████████ ███████████████████ ███   ███████████
     █████████  ███    █████████████ █████ ██████████████
    █████████ ██████████ █████████ █████ █████ ████ █████
  ███████████ ███    ███ █████████ █████ █████ ████ █████
 ██████  █████████████████████ ████ █████ █████ ████ ██████

      ]]

        local userName = "scrumpeh"
        local marginBottom = 0
        dashboard.section.header.val = vim.split(logo, "\n")

        -- Split logo into lines
        local logoLines = {}
        for line in logo:gmatch("[^\r\n]+") do
            table.insert(logoLines, line)
        end

        -- Calculate padding for centering the greeting
        local logoWidth = logo:find("\n") - 1 -- Assuming the logo width is the width of the first line
        --        local padding = math.floor((logoWidth) / 2)

        -- Generate spaces for padding

        -- Add margin lines below the padded greeting
        local margin = string.rep("\n", marginBottom)

        -- Concatenate logo, padded greeting, and margin
        --       local adjustedLogo = logo .. '\n' .. margin

        dashboard.section.buttons.val = {
            dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("o", "  Open Explorer", ":NvimTreeOpen <CR>"),
            dashboard.button(
                "f",
                "  Find file",
                --":cd $HOME | silent Telescope find_files hidden=true no_ignore=true <CR>"
                ":silent Telescope find_files hidden=true no_ignore=true <CR>"
            ),
            dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
            dashboard.button("r", "󰄉  Recent files", ":Telescope oldfiles <CR>"),
            dashboard.button("u", "󱐥  Update plugins", "<cmd>Lazy update<CR>"),
            dashboard.button("c", "  Settings", ":e $HOME/.config/nvim/init.lua<CR>"),
            dashboard.button("d", "󱗼  Dotfiles", ":e $HOME/dotfiles <CR>"),
            dashboard.button("q", "󰿅  Quit", "<cmd>qa<CR>"),
        }

        -- local function footer()
        -- 	return "Footer Text"
        -- end

        dashboard.section.footer.val = vim.split("\n\n" .. userName, "\n")

        vim.api.nvim_create_autocmd("User", {
            pattern = "LazyVimStarted",
            desc = "Add Alpha dashboard footer",
            once = true,
            callback = function()
                local stats = require("lazy").stats()
                local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
                dashboard.section.footer.val =
                { " ", " ", " ", " Loaded " .. stats.count .. " plugins  in " .. ms .. " ms " }
                dashboard.section.header.opts.hl = "DashboardFooter"
                pcall(vim.cmd.AlphaRedraw)
            end,
        })

        dashboard.opts.opts.noautocmd = true
        alpha.setup(dashboard.opts)
    end,
}
