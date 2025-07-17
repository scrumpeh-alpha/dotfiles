
-- TODO
-- Currently, this uses ToggleTerm.
-- Find some way to use the default terminal properly as it is an external dependency

return {
    "Civitasv/cmake-tools.nvim",
    config = function()
        local osys = require("cmake-tools.osys")
        require("cmake-tools").setup({
            cmake_command = "cmake",
            cmake_build_directory = function()
                -- if osys.iswin32 then
                --     return "build\\${variant:buildType}"
                -- end
                -- return "build/${variant:buildType}"
                return "build"
            end,
            cmake_generate_options = {
                "-G 'Unix Makefiles'",
                "-DCMAKE_EXPORT_COMPILE_COMMANDS=1",
            },
            cmake_compile_commands_options = {
                action = "copy", -- available options: soft_link, copy, lsp, none
                -- soft_link: this will automatically make a soft link from compile commands file to target
                -- copy:      this will automatically copy compile commands file to target
                -- lsp:       this will automatically set compile commands file location using lsp
                -- none:      this will make this option ignored
                target = vim.loop.cwd(), -- path to directory, this is used only if action == "soft_link" or action == "copy"
            },
            cmake_executor = {
                name = "toggleterm",
                opts = {
                    size = 11,
                    direction = "horizontal",
                },
            },
            cmake_runner = {
                name = "toggleterm",
                opts = {
                    size = 11,
                    direction = "horizontal",
                },
            },
        })
    end,
}
