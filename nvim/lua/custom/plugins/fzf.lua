return { -- Highlight, edit, and navigate code
  'junegunn/fzf',
  dependencies = {
    'junegunn/fzf.vim',
  },
  config = function()
    -- pcall(require('nvim-treesitter.install').update { with_sync = true })
  end,
  init = function ()
    vim.cmd([[
      let $RG_DEFAULT_OPTS = '--glob="!node_modules/*" --glob="!*.rbi" --glob="!components/platform/test/unit/graph_api/admin/graphql_validation/*"'
      let $FZF_DEFAULT_COMMAND = 'rg --files ' . $RG_DEFAULT_OPTS
      let $FZF_DEFAULT_OPTS = '-i --info=inline'
      let g:fzf_preview_window = []

      autocmd! FileType fzf
      autocmd  FileType fzf set laststatus=0 noshowmode noruler
        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

      let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
        \ 'bg':      ['bg', 'Normal'],
        \ 'hl':      ['fg', 'Keyword'],
        \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
        \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
        \ 'hl+':     ['fg', 'Statement'],
        \ 'info':    ['fg', 'PreProc'],
        \ 'border':  ['fg', 'Ignore'],
        \ 'prompt':  ['fg', 'Conditional'],
        \ 'pointer': ['fg', 'Exception'],
        \ 'marker':  ['fg', 'Keyword'],
        \ 'spinner': ['fg', 'Label'],
        \ 'header':  ['fg', 'Comment'] }


      "Unmap some unsued buffer command to use fzf buffers (<Leader>b)
      "autocmd VimEnter *  unmap <Leader>bundo
      "autocmd VimEnter *  unmap <Leader>bw
      "autocmd VimEnter *  unmap <Leader>bb
      "autocmd VimEnter *  unmap <Leader>bf
      "autocmd VimEnter *  unmap <Leader>bun
      "autocmd VimEnter *  unmap <Leader>bd
      "autocmd VimEnter *  unmap <Leader>ba
      "autocmd VimEnter *  unmap <Leader>bx
      "autocmd VimEnter *  unmap <Leader>bc
      "autocmd VimEnter *  unmap <Leader>bl

      function! s:toSearchString(str)
        return substitute(a:str, "::", "/", "g")
      endfunction

      let $FZF_RIPGREP_FMT = 'rg --column --line-number --no-heading --color=always --smart-case ' . $RG_DEFAULT_OPTS . " %s || true"
      function! RipgrepFzf(query, fullscreen)
        let initial_command = printf($FZF_RIPGREP_FMT, a:query)
        call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview('up:50%,border-bottom', 'ctrl-/'), a:fullscreen)
      endfunction

      function! s:getVisualSelection()
        let [line_start, column_start] = getpos("'<")[1:2]
        let [line_end, column_end] = getpos("'>")[1:2]
        let lines = getline(line_start, line_end)

        if len(lines) == 0
          return ""
        endif

        let lines[-1] = lines[-1][:column_end - (&selection == "inclusive" ? 1 : 2)]
        let lines[0] = lines[0][column_start - 1:]

        return join(lines, "\n")
      endfunction

      command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>1)
      nmap <leader>ff :Files<CR>
      nmap <leader>fb :Buffers<CR>
      vnoremap <silent><leader>f <Esc>:FZF -q <C-R>=<SID>toSearchString(<SID>getVisualSelection())<CR><CR>
      nnoremap <silent><leader>f :FZF -q <C-R>=<SID>toSearchString(expand("<cword>"))<CR><CR>
      nnoremap <leader>g :Rg '<C-R><c-w>'
    ]])
  end
}
