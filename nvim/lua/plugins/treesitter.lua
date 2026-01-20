require'nvim-treesitter.configs'.setup {
  ensure_installed = { "rust", "c", "lua", "vim", "glsl" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
