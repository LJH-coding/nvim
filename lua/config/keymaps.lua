-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Ctrl-a + Ctrl-c
keymap.set("n", "<C-a>", "ggVGY")
keymap.set("n", "<C-c>", "y")

-- buffer
keymap.set("n", "<C-l>", ":bnext<Return>", opts)
keymap.set("n", "<C-h>", ":bprev<Return>", opts)
keymap.set("n", "<C-w>", ":bdelete<Return>", opts)

-- split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--open terminal
keymap.set("n", "tt", "<ESC>:split<CR>:te<Return>")
--            "<ESC>:w<CR>:split<CR>:te gdb ./a.out r <CR>",
--
