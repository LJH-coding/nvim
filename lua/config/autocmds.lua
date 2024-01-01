-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- autocmd filetype cpp nnoremap <F5> :w <CR> :!clear ; g++ \-\-std=c++17 %  && echo Compiled successfully. && time ./a.out; <CR>

autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
        vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<F5>",
            "<ESC>:w<CR>:split<CR>:te g++ --std=c++17 -g % && echo Compiled successfully. && time ./a.out; <CR>",
            { silent = true, noremap = true }
        )
        vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<F8>",
            "<ESC>:w<CR>:split<CR>:te gdb ./a.out r <CR>",
            { silent = true, noremap = true }
        )
    end,
})
autocmd("FileType", {
    pattern = "python",
    callback = function()
        -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
        vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<F5>",
            "<ESC>:w<CR>:split<CR>:te python3 % <CR>",
            { silent = true, noremap = true }
        )
    end,
})
