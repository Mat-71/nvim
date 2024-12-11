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

lspconfig.ts_ls.setup {}

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.autopep8,
  },
})
