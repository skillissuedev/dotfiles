local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

vim.keymap.set('n', '<C-e>', ':NERDTreeToggle<CR>', {silent = true })
vim.keymap.set('n', '<M-t>', ':tabnew<CR>', {silent = true })
vim.keymap.set('n', '<M-w>', ':tabclose<CR>', {silent = true })
vim.keymap.set('n', '<M-Right>', ':tabnext<CR>', {silent = true })
vim.keymap.set('n', '<M-Left>', ':tabprevious<CR>', {silent = true })
vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})

