local oil = require("oil")
require('no-neck-pain')
require('obsidian')
require('telescope')
vim.g.mapleader = " "

local keymap = vim.keymap.set


keymap("n", "<leader>lf", function()
    oil.open()
end)

keymap("n", "<leader>nnp", function()
    vim.cmd("topleft vs | wincmd h |vertical resize -75")
    oil.open()
    vim.cmd("wincmd l")
    vim.cmd("NoNeckPain")
end)

keymap("n", "<leader>db", function()
    vim.diagnostic.open_float()
end)

keymap("n", "<leader>fn", function()
    vim.cmd("ObsidianSearch")
end)

keymap("n", "<leader>tc", function()
    if vim.opt.conceallevel:get() == 2 then
        vim.opt.conceallevel = 0
    elseif vim.opt.conceallevel:get() == 0 then
        vim.opt.conceallevel = 2
    end
end)

keymap("n", "<leader>ft", function()
    vim.cmd("ObsidianTemplate")
end)

keymap("n", "<leader>fd", function()
    vim.cmd("ObsidianToday")
end)

keymap("n", "<leader>j", function()
    vim.cmd("bprevious")
end)

keymap("n", "<leader>k", function()
    vim.cmd("bnext")
end)
