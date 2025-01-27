-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.tabstop = 4 -- Number of spaces that a <Tab> counts for
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Use spaces instead of tabs

-- require("onedark").setup({
--   style = "dark",
-- })
-- require("onedark").load()

vim.opt.autoindent = false
vim.opt.smartindent = false
vim.opt.cindent = false
