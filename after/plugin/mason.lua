require('mason').setup()
require('mason-lspconfig').setup()

local lspconfig = require("lspconfig")
local null_ls = require("null-ls")

lspconfig.bashls.setup {}

lspconfig.clangd.setup {
    filetypes = { "c", "cc", "cpp", "h", "hh", "hpp", "hxx" }
}

lspconfig.cssls.setup {}

lspconfig.jsonls.setup {}

lspconfig.pyright.setup {
    settings = {
        pyright = {
            autoImportCompletion = true,
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                typeCheckingMode = 'on'
            },
        },
    },
}

lspconfig.ts_ls.setup({
    on_attach = function(client, bufnr)
        require('nvim-lsp-ts-utils').setup({
            filter_out_diagnostics_by_code = { 80001 },
        })
        require('nvim-lsp-ts-utils').setup_client(client)
    end,
})

lspconfig.cmake.setup({})

null_ls.setup({
    debug = true,
    sources = {
        require("none-ls.formatting.autopep8"),
        require("none-ls.diagnostics.eslint"),
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.formatting.prettier -- prettier, eslint, eslint_d, or prettierd
    },
})

lspconfig.jdtls.setup({})

lspconfig.omnisharp.setup({
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').definition_handler,
        ["textDocument/typeDefinition"] = require('omnisharp_extended').type_definition_handler,
        ["textDocument/references"] = require('omnisharp_extended').references_handler,
        ["textDocument/implementation"] = require('omnisharp_extended').implementation_handler,
    },
    cmd = { '/usr/bin/OmniSharp', '--languageserver' }
})
