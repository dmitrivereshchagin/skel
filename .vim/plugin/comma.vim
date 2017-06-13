" ~/.vim/plugin/comma.vim

if exists('g:loaded_comma') || &compatible
  finish
endif
let g:loaded_comma = 1

function! s:ExpandComma() abort
  return getline('.') =~# '\v,@<!,%' . col('.') . 'c' ? "\<BS> => " : ','
endfunction

inoremap <unique> <expr> , <SID>ExpandComma()
