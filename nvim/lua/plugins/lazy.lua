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
  { 'rose-pine/neovim', name = 'rose-pine' },
  "folke/tokyonight.nvim",
  'itchyny/lightline.vim',
  'ap/vim-css-color',
  'nvim-lua/plenary.nvim',
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
  'rust-lang/rust.vim',
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',

  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'andweeb/presence.nvim',

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

})

