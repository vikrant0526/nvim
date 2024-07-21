return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>fc", vim.lsp.buf.format)
		vim.api.nvim_create_augroup("AutoFormatting", {})
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = "AutoFormatting",
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
}
