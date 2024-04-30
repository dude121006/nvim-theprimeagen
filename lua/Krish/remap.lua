vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "fj", "<Esc>")

-- speeedy move
vim.keymap.set("n", "J", "5j")
vim.keymap.set("n", "K", "5k")
vim.keymap.set("v", "J", "5j")
vim.keymap.set("v", "K", "5k")

-- straight to clipboard
vim.keymap.set("v", "<leader>y", "\"+y")

-- similar to alt + arrows in vscode (to move selected stuff)
vim.keymap.set("v", "<c-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<c-k>", ":m '<-2<cr>gv=gv")

-- JOIN lines without moving cursor
vim.keymap.set("n", "<expr> <leader>j", "mzJ`z")

-- SCROLL without moving cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- SEARCH next without moving cursor
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>p", "\"_dP")
vim.keymap.set("v", "<leader>p", "\"_dP")

-- no highlight search
vim.keymap.set("n", "<leader>/", ":nohlsearch")

-- open with vscode
vim.keymap.set("n", "<leader>,c", ":!code .")

-- makefile all, compile, run
vim.keymap.set("n", "<leader>,a", ":!mingw32-make<CR>")
vim.keymap.set("n", "<leader>,s", ":!mingw32-make compile<CR>")
vim.keymap.set("n", "<leader>,d", ":!mingw32-make run<CR>")
