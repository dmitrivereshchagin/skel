" ~/.vim/plugin/conflict.vim

if exists('g:loaded_conflict')
  finish
endif
let g:loaded_conflict = 1

highlight default link ConflictMarker DiffChange

function! s:Syntax() abort
  syntax match ConflictMarker /^\([<=>|]\)\{7\}\1\@!/ containedin=ALL
endfunction

augroup conflict
  autocmd!
  autocmd Syntax *  call s:Syntax()
augroup END
