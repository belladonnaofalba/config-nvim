require('catppuccin').setup({
    disable_background = true
})
require('telescope')
vim.notify = require("notify")
require('noice')
require("BigBugVim.set")
require('colorizer').setup()
require('oil')
require('no-neck-pain')

require("BigBugVim.remap")


--vim.diagnostic.config({ virtual_lines = false })
vim.opt.termguicolors = true

vim.cmd('set termguicolors')
vim.cmd('set autochdir')
vim.cmd('hi TelescopeBorder guifg=Pink')
vim.cmd('hi NoiceCmdlinePopupBorder guifg=Pink')
vim.cmd('hi NotifyINFOIcon guifg=Pink')
vim.cmd('hi NotifyINFOTitle guifg=Pink')
vim.cmd('hi NoiceCmdlineIcon guifg=Pink')
vim.cmd('hi NoiceCursor guibg=Pink')
--vim.cmd('NoNeckPain')

        
