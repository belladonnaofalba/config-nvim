local builtin = require('telescope.builtin')
local telescope = require('telescope')
local action_layout = require("telescope.actions.layout")
telescope.load_extension('media_files')


vim.keymap.set('n', '<leader>fu', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))
end)
vim.keymap.set('n', '<leader>fh', function()
    builtin.find_files({ hidden = true })
end)
vim.keymap.set('n', '<leader>fb', function()
    builtin.buffers(require('telescope.themes').get_dropdown({ winblend = 10 }))
end)
vim.keymap.set('n', '<leader>fg', function()
    builtin.live_grep(require('telescope.themes').get_dropdown({ winblend = 10 }))
end)

require('telescope').setup {
    defaults = {
        require('telescope.themes').get_dropdown({ winblend = 10 }),
              layout_config = {
                  vertical = {width = 0.5},
                  preview_cutoff = 10,
               },
        mappings = {
            n = {
                ["<M-p>"] = action_layout.toggle_preview
            },
            i = {
                ["<C-h>"] = "which_key",
                ["<M-p>"] = action_layout.toggle_preview
            }
        },
        pickers = {
            find_files = {
                theme = "dropdown",
            },
            buffers = {
                theme = "dropdown",
            },

        },
        extensions = {
            media_files = {
                filetypes = { "png", "webp", "jpg", "jpeg", "pdf" },

            }
        }
    } }
require('BigBugVim.init')
require ('BigBugVim.remap')
