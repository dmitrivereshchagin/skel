" ~/.vim/plugin/xsel.vim
" For the case when compiled without +clipboard.

if exists('g:loaded_xsel')
  finish
endif
let g:loaded_xsel = 1

function! s:Xsel(clipboard, startline, endline) abort
  execute printf(
      \ '%d,%d write !xsel --input %s',
      \ a:startline,
      \ a:endline,
      \ a:clipboard ? '--clipboard' : '--primary',
      \ )
endfunction

command -bang -range=% Xsel
    \ call s:Xsel(<bang>0, <line1>, <line2>)
