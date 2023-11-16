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
require("lazy").setup({
  "wbthomason/packer.nvim",
  "ellisonleao/gruvbox.nvim",
  { 'rose-pine/neovim', name = 'rose-pine' },
  'itchyny/lightline.vim',
  { "catppuccin/nvim", as = "catppuccin" },
  'ap/vim-css-color',
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
  'nvim-lua/plenary.nvim',
  {'neoclide/coc.nvim', branch = 'release'},
  'rust-lang/rust.vim',
  "ryanoasis/vim-devicons",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons"
})


