local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>m", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>,", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>;", function() harpoon:list():next() end)
