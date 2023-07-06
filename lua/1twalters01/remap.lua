--vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text up and down respectively
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Half page jumps up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle when moving up or down
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without loosing current paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Remap "+p to <space>p and "+P to <space>P (paste)
vim.keymap.set("n", "<space>p", "\"+p")
vim.keymap.set("v", "<space>p", "\"+p")
vim.keymap.set("n", "<space>P", "\"+P")

-- Remap "+y and "+Y to <space>y and <space>Y (copy). Then type ap to yank paragraph
vim.keymap.set("n", "<space>y", "\"+y")
vim.keymap.set("v", "<space>y", "\"+y")
vim.keymap.set("n", "<space>Y", "\"+Y")

-- Find all and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


