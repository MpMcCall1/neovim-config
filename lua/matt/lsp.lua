local lsp = require("lsp-zero")

lsp.preset("recommended")

local luasnip = require('luasnip')
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                if luasnip.expandable() then
                    luasnip.expand()
                else
                    cmp.confirm({
                        select = true,
                    })
                end
            else
                fallback()
            end
        end),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {"i", "s"}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {"i", "s"}),
    }
})

lsp.set_preferences({
    suggest_lsp_server = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

local lsp_zero = require("lsp-zero")
lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({bufnr=bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'rust_analyzer', 'lua_ls', 'glslls'},
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

require('lspconfig')['glslls'].setup{
    on_attach = function(client, bufnr)
        local rc = client.resolved_capabilities
        rc.completion = false

    end,
    filetypes =  {'vert', 'vs', 'tesc', 'tese', 'geom', 'gs', 'frag', 'fs', 'comp'};
}

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig')['lua_ls'].setup{
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'},
            },
        },
    },
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

require("nvim-treesitter.configs").setup {
    auto_install = true,
    highlight = {
        enable = true,
    },
}
