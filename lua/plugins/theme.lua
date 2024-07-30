return {
	{
		"oxfist/night-owl.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000,
		config = function()
			require("night-owl").setup()
			vim.cmd.colorscheme("night-owl")
		end,
	},
}
