vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set number")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set paste")
vim.cmd("set go+=a")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
require("lazy").setup("plugins")

