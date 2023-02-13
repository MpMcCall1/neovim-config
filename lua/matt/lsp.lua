local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagonstics = {
                globals = {'vim'}
            }
        }
    }
})

local cmp = require('cmp')

lsp.set_preferences({
    suggest_lsp_server = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
--format on save
   if client.server_capabilities.documentFormattingProvider then
       vim.api.nvim_create_autocmd("BufWritePre", {
           group = vim.api.nvim_create_augroup("Format", { clear = true }),
           buffer = bufnr,
           callback = function() vim.lsp.buf.formatting_seq_sync() end
       })
   end
end

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
