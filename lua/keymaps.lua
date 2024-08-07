-- Clean up search highligh by pressing ESC
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Yank and Paste from System Keyboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "[Y]ank to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "[P]aste from system clipboard" })

-- Move vertically and center cursor to screen
vim.keymap.set("n", "j", "jzz")
vim.keymap.set("n", "k", "kzz")

-- Move half page and center cursor to screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>gi", vim.lsp.buf.hover, { desc = "[G]et [I]nfo about element under cursor" })

vim.keymap.set("n", "<leader>ut", "vim.cmd.UndotreeToggle", { desc = "[U]ndo [T]ree" })
