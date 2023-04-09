return {
  'preservim/nerdtree',
  cmd = { 'NERDTreeToggle', 'NERDTreeFind' },
  keys = {
    { "<c-n>", ":NERDTreeToggle<CR>", desc = "", silent = true },
  },
  init = function()
    vim.cmd("command F NERDTreeFind")
  end
}
