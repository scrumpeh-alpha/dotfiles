return {
	"nvim-java/nvim-java",
	config = function()
		require("java").setup({
			-- spring_boot_tools = {
			-- 	enable = false,
			-- 	version = "1.55.1",
			-- },
            -- dap = {
            --     enable = false
            -- }
		})
	end,
}
