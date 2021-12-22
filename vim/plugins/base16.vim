Plug 'chriskempson/base16-vim'

function SetupBase16()
  colorscheme base16-material-darker
  " Without this, line number column has a grey background
  highlight LineNr guibg=NONE
endfunction
autocmd User PlugLoaded call SetupBase16()
