local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

require("noice").setup {
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            -- override the default lsp markdown formatter with Noice
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            -- override the lsp markdown formatter with Noice
            ["vim.lsp.util.stylize_markdown"] = true,
            -- override cmp documentation with Noice (needs the other options to work)
            ["cmp.entry.get_documentation"] = true,
        },
        hover = { enabled = true }, -- <-- HERE!
        signature = { enabled = true }, -- <-- HERE!
    },
}
require('rustaceanvim')
require'lspconfig'.gdscript.setup{}
require("lspconfig").lua_ls.setup({})
-- Mason Require
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'clangd', 'lua_ls', 'tsserver', 'taplo', 'pyright', 'html' },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            print("help")
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }
})
