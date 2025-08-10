vim.keymap.set("n", "H", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader><space>", function() Snacks.picker.buffers() end, { desc = "Search Buffers" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.smart() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fh", function() Snacks.picker.help() end, { desc = "Find Help" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Grep" })
vim.keymap.set("n", "<leader>fa", function() Snacks.picker.autocmds() end, { desc = "Find Autocmds" })
vim.keymap.set("n", "<leader>fk", function() Snacks.picker.keymaps() end, { desc = "Find Keymaps" })
vim.keymap.set("n", "<leader>e", function() Snacks.picker.explorer({ auto_close = true }) end, { desc = "Open Explorer" })
vim.keymap.set("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
vim.keymap.set("n", "gD", function() Snacks.picker.lsp_declarations() end, { desc = "Goto Declaration" })
vim.keymap.set("n", "gr", function() Snacks.picker.lsp_references() end, { nowait = true, desc = "References" })
vim.keymap.set("n", "gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
vim.keymap.set("n", "gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto T[y]pe Definition" })
vim.keymap.set("n", "<leader>ss", function() Snacks.picker.lsp_symbols() end, { desc = "LSP Symbols" })
vim.keymap.set(
	"n",
	"<leader>sS",
	function()
		Snacks.picker.lsp_workspace_symbols()
	end,
	{ desc = "LSP Workspace Symbols" }
)
