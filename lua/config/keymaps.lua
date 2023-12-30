-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "i", "v" }, "jk", "<Esc>", { desc = "Exit to normal mode" })

vim.keymap.set({ "i", "x", "n", "s" }, "<A-s>", "<cmd>w<cr><esc>", { desc = "Save file" }) --  use Alt-s to save as well
