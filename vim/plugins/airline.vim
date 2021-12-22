Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

function SetupAirline()
  set noshowmode " Hide --INSERT-- since it's in airline
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'base16_material_darker'
  let g:airline_skip_empty_sections = 1
  let g:airline_section_b = '' " don't care for branch
  let g:airline_section_y = '' " don't care for encoding
  let g:airline_section_z = airline#section#create(['obsession', 'linenr', 'maxlinenr', 'colnr'])
endfunction

autocmd User PlugLoaded ++nested call SetupAirline()
