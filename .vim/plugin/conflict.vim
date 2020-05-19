" ~/.vim/plugin/conflict.vim

if exists('g:loaded_conflict')
  finish
endif
let g:loaded_conflict = 1

function! s:Syntax() abort
  syntax match ConflictMarker /^\([<=>|]\)\{7\}\1\@!/ containedin=ALL
  highlight default link ConflictMarker DiffChange
endfunction

augroup conflict
  autocmd!
  autocmd FileType *  call s:Syntax()
augroup END
