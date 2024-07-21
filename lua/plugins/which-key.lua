return {
	"folke/which-key.nvim",
	event = "VimEnter",
	config = function()
		require("which-key").setup()

		require("which-key").add({
			{ "<leader>wc", group = "[C]ode" },
			{ "<leader>wd", group = "[D]ocument" },
			{ "<leader>wr", group = "[R]ename" },
			{ "<leader>ws", group = "[S]earch" },
			{ "<leader>ww", group = "[W]orkspace" },
			{ "<leader>wt", group = "[T]oggle" },
			{ "<leader>wh", group = "Git [H]unk", mode = { "n", "v" } },
		})
	end,
}
