Plug 'preservim/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }

nmap <silent> <c-n> :NERDTreeToggle<CR>
noremap <silent> <Space> :silent noh<Bar>echo<CR>

autocmd User PlugLoaded call SetupCommandAlias("F","NERDTreeFind")
