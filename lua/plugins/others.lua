return {
	-- Auto close (), {}, [], "", ''
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
	-- Undotree to browse through undo history.
	{
		"mbbill/undotree",
	},
	-- Github Copilot
	{
		"github/copilot.vim",
	},
}
