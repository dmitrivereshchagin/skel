" ~/.vim/plugin/stickystar.vim

if exists('g:loaded_stickystar')
  finish
endif
let g:loaded_stickystar = 1

function! s:Pattern(word) abort
  return printf('\V\<%s\>', escape(a:word, '\'))
endfunction

" Setting 'hlsearch' from a function doesn't work.
command! -nargs=1 StickyStar
    \ let [@/, &hlsearch] = [s:Pattern(<f-args>), &hlsearch]

nnoremap <Plug>StickyStar
    \ :<C-U>StickyStar <C-R>=expand('<cword>')<CR><CR>

if !hasmapto('<Plug>StickyStar', 'n')
  nmap <unique> <Leader>*  <Plug>StickyStar
  nmap <unique> <Leader>8  <Plug>StickyStar
endif
