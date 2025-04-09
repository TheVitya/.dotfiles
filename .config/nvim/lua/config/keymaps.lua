-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Select all
map("n", "<C-a>", "gg<S-v>G", opts)

-- Split window
map("n", "ss", ":split<CR><C-w>w", opts)
map("n", "sv", ":vsplit<CR><C-w>w", opts)

-- Resize window
map("n", "<C-w><left>", "<C-w><", opts)
map("n", "<C-w><right>", "<C-w>>", opts)
map("n", "<C-w><up>", "<C-w>+", opts)
map("n", "<C-w><down>", "<C-w>-", opts)

-- Jumping with centering
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)

vim.keymap.set("n", "<leader>pv", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
vim.keymap.set("n", "<leader>pf", "<cmd>Neotree reveal<CR>", { desc = "Open Neo-tree and reveal current file" })
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Rename variable" })
