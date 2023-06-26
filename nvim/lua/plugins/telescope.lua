require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-F>', builtin.find_files, {})
