vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', '<leader>o', require('ufo').openAllFolds)
vim.keymap.set('n', '<leader>p', require('ufo').closeAllFolds)

--vim.keymap.set('n', '<leader>o', require('ufo').open)
--vim.keymap.set('n', '<leader>l', require('ufo').closeAllFolds)


-- Option 3: treesitter as a main provider instead
-- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
-- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
    end
})


vim.keymap.set('n', '<leader>ps', function()
  require("ufo.preview"):peekFoldedLinesUnderCursor()
end)
