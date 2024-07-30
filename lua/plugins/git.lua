return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			local opts = {
				signs = {
					add = { text = "+" },
					change = { text = "~" },
					delete = { text = "_" },
					topdelete = { text = "?" },
					changedelete = { text = "~" },
				},
			}

			require("gitsigns").setup(opts)

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git preview hunk" })
		end,
	},
	{
		"tpope/vim-fugitive",
	},
}
