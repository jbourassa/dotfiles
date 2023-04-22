return {
  'akinsho/bufferline.nvim',

  -- not sure?
  -- dependencies = 'nvim-tree/nvim-web-devicons',

  version = "v3.*",
  config = function ()
    require("bufferline").setup({
      options = {
        buffer_close_icon = '',
      }
    })

    -- Buffer nav, using bufferline but otherwise :bn / :bp would work
    vim.keymap.set('n', '<S-Right>', ":BufferLineCycleNext<CR>",    { desc = "Next Buffer", silent = true })
    vim.keymap.set('n', '<S-Left>', ":BufferLineCyclePrev<CR>", { desc = "Prev Buffer", silent = true })
    vim.keymap.set('n', '<C-S-Right>', ':BufferLineMoveNext<CR>', { silent = true })
    vim.keymap.set('n', '<C-S-Left>', ':BufferLineMovePrev<CR>', { silent = true })
  end
}
