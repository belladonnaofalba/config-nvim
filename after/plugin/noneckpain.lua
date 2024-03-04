require("no-neck-pain").setup({
    buffers = {
        left = {
            enabled = false,
        },
        scratchPad = {
            -- set to `false` to
            -- disable auto-saving
            enabled = true,
            -- set to `nil` to default 
            -- to current working directory
            location = "~/Documents/nvimNotes",
        },
        bo = {
            filetype = "md"
        },
    },
})
