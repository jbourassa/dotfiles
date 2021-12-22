" Leaving these here as notes to future self
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-rg.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim',  { 'do': 'make' }


function SetupTelescope()
  lua << EOF
  local tele = require('telescope')
  tele.setup({
    defaults = {
      path_display = { shorten = 4 },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!node_modules/*",
        "--glob=!components/platform/test/unit/graph_api/admin/graphql_validation/*",
        "--glob=!*.rbi",
      },
      layout_strategy = 'center',
      layout_config = {
        width = 0.80,
        height = 0.95,
      }
    }
  })
  tele.load_extension('fzf')

  -- Ideas:
  --  . Rg: global
  --  . ,g: Search word under cursor, or maybe with a motion?
  --  . ,g: Visual search
  -- ^ default value could be achieved with `default_text=`: live_grep_raw({default_text= "lol"})

  -- function _G
EOF

  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  " default_text= allows starting with a query?
  nnoremap <leader>g :lua require("telescope").extensions.live_grep_raw.live_grep_raw({default_text= ".."})<cr>
endfunction

autocmd User PlugLoaded ++nested call SetupTelescope()
