" ~/.vim/after/plugin/sneak.vim

if !get(g:, 'loaded_sneak_plugin')
  finish
endif

function! s:StatusFlag() abort
  return sneak#is_sneaking() ? '[S]' : ''
endfunction

call lines#AddStatusFlags(function('s:StatusFlag'))

highlight link Sneak NONE
