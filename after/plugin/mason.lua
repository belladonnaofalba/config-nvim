--https://github.com/williamboman/mason.nvim
--https://github.com/williamboman/mason-lspconfig.nvim

require("mason").setup()
require('BigBugVim.init')

local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
