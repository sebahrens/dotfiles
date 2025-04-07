-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key to space (recommended to do this before lazy setup)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load keymaps
require("keymaps")

-- Load plugins configuration
require("lazy").setup("plugins")
