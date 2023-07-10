vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Option 3: treesitter as a main provider instead
-- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
-- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
    end
})

-- Open and close all folds
vim.keymap.set('n', '<leader>o', require('ufo').openAllFolds)
vim.keymap.set('n', '<leader>l', require('ufo').closeAllFolds)

-- open and close all folds of the level the curser is on
vim.keymap.set('n', '<leader>oo', 'zr')
vim.keymap.set('n', '<leader>ll', 'zm')


vim.keymap.set('n', '<leader>.', function()
  require("ufo.preview"):peekFoldedLinesUnderCursor()
end)
