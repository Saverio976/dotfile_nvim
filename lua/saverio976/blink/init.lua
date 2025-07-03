local blink = require('blink.cmp')

blink.setup({
    keymap = {
        preset = 'super-tab',
        ['<A-&>'] = { function(cmp) cmp.accept({ index = 1 }) end },
        ['<A-é>'] = { function(cmp) cmp.accept({ index = 2 }) end },
        ['<A-">'] = { function(cmp) cmp.accept({ index = 3 }) end },
        ['<A-\'>'] = { function(cmp) cmp.accept({ index = 4 }) end },
        ['<A-(>'] = { function(cmp) cmp.accept({ index = 5 }) end },
        ['<A-->'] = { function(cmp) cmp.accept({ index = 6 }) end },
        ['<A-è>'] = { function(cmp) cmp.accept({ index = 7 }) end },
        ['<A-_>'] = { function(cmp) cmp.accept({ index = 8 }) end },
        ['<A-ç>'] = { function(cmp) cmp.accept({ index = 9 }) end },
        ['<A-à>'] = { function(cmp) cmp.accept({ index = 10 }) end },
    },
    completion = {
        menu = {
            border = 'single',
            draw = {
                columns = {
                    { 'item_idx' },
                    { 'kind_icon' },
                    { 'label', 'label_description', gap = 1 },
                },
                components = {
                    item_idx = {
                        text = function(ctx) return ctx.idx == 10 and '0' or ctx.idx >= 10 and ' ' or tostring(ctx.idx) end,
                        highlight = 'BlinkCmpItemIdx' -- optional, only if you want to change its color
                    },
                },
            },
        },
        documentation = {
            window = {
                border = 'single',
            },
            auto_show = true,
        },
    },
    signature = {
        enabled = true,
        window = {
            border = 'single',
        },
    },
    sources = {
        default = { 'lsp', 'path', 'buffer' },
        min_keyword_length = function(ctx)
            -- only applies when typing a command, doesn't apply to arguments
            if ctx.mode == 'cmdline' and string.find(ctx.line, ' ') == nil then return 2 end
            return 0
        end,
    },
})
