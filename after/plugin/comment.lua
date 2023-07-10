require('Comment').setup({
    mappings = { basic = false, extra = false },
})

require('Comment.config'):get()
local api = require('Comment.api')

-- Comment current line
vim.keymap.set("n", "<leader>//", function()
    api.toggle.linewise.current()
end)

-- Comment multiple lines
vim.keymap.set(
    "n", "<leader>/", api.call('toggle.linewise', 'g@'),
    { expr = true }
)


