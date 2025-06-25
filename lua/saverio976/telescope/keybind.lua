local km_set = vim.keymap.set

km_set('n', '<leader>f',
    '<cmd>Telescope file_browser depth=3 auto_depth=true add_dirs=false<cr>',
    { desc = 'Telescope find_files', noremap = true, silent = true }
)

km_set('n', 'tg',
    '<cmd>Telescope live_grep<cr>',
    { desc = 'Telescope live_grep', noremap = true, silent = true }
)

km_set('n', 'tb',
    '<cmd>Telescope buffers<cr>',
    { desc = 'Telescope buffers', noremap = true, silent = true }
)

km_set('n', 'th',
    '<cmd>Telescope help_tags<cr>',
    { desc = 'Telescope help_tags', noremap = true, silent = true }
)

km_set('n', 'tf',
    '<cmd>Telescope file_browser depth=3<cr>',
    { desc = 'Telescope help_tags', noremap = true, silent = true }
)
