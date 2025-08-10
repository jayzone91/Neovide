local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>qq", ":q<CR>", { desc = "Quit Neovim" })
map({ "n", "i" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save Buffer" })
map({ "n", "v" }, "<C-c>", '"+y', { desc = "Copy in System Clipboard" })
map({ "n", "v" }, "<C-v>", '"+p', { desc = "Paste from System Clipboard" })
map("i", "<C-c>", '<Esc>"+ya', { desc = "Copy in System Clipboard" })
map("i", "<C-v>", '<Esc>"+pa', { desc = "Paste from System Clipboard" })

map("n", "<leader>u", function() vim.pack.update() end, { desc = "Update Plugins" })
