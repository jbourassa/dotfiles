return {
  'akinsho/bufferline.nvim',

  -- not sure?
  -- dependencies = 'nvim-tree/nvim-web-devicons',

  version = "*",
  config = function ()
    require("bufferline").setup({})

    -- Buffer nav, using bufferline but otherwise :bn / :bp would work
    vim.keymap.set('n', '<S-Right>', ":BufferLineCycleNext<CR>",    { desc = "Next Buffer", silent = true })
    vim.keymap.set('n', '<S-Left>', ":BufferLineCyclePrev<CR>", { desc = "Prev Buffer", silent = true })
    vim.keymap.set('n', '<C-S-Right>', ':BufferLineMoveNext<CR>', { silent = true })
    vim.keymap.set('n', '<C-S-Left>', ':BufferLineMovePrev<CR>', { silent = true })
  end
}
