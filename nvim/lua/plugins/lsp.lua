-- set some keymaps for LSP actions
vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, {})
vim.keymap.set("n", "<leader>v", function() vim.lsp.buf.hover() end, {})
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, {})
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, {})

-- change the way errors/warnings/... are shown in the editor
vim.diagnostic.config({
    update_in_insert = true, -- update them when inserting text
    virtual_text = true, -- show the message at the end of the line
    signs = true, -- show the little signs on the left on error
    underline = true, -- underline the error
})

-- set the looks of the signs near the line numbers to squares
vim.fn.sign_define("DiagnosticSignError", { text = "󰝤", texthl = "DiagnosticSignError", numhl = "" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "󰝤", texthl = "DiagnosticSignWarn", numhl = "" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰝤", texthl = "DiagnosticSignHint", numhl = "" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "󰝤", texthl = "DiagnosticSignInfo", numhl = "" })

-- start mason and mason-lspconfig
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'rust_analyzer'},
})
