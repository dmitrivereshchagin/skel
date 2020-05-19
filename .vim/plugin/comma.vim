" ~/.vim/plugin/comma.vim

if exists('g:loaded_comma')
  finish
endif
let g:loaded_comma = 1

function! s:CharBeforeCursor() abort
  return matchstr(getline('.'), '.\%' . col('.') . 'c')
endfunction

function! s:TriggerAbbrev() abort
  return has#('patch-7.3.389') ? "\<C-]>" : ''
endfunction

function! s:Comma() abort
  if s:CharBeforeCursor() is# ','
    return "\<BS> => "
  endif
  return s:TriggerAbbrev() . ','
endfunction

inoremap <unique> <expr> ,  <SID>Comma()
