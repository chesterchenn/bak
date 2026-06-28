-- 键位映射
-- ~/.config/nvim/lua/config/keymaps.lua
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

vim.keymap.set("n", "Q", ":q<CR>", { desc="quit" })
vim.keymap.set("n", "S", ":w<CR>", { desc="save" })

