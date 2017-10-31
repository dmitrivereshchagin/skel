" ~/.vim/plugin/conflict_marker.vim

if exists('g:loaded_conflict_marker') || !has('syntax')
  finish
endif
let g:loaded_conflict_marker = 1

function! s:DefineMatch() abort
  syntax match ConflictMarker containedin=ALL /^[<=>|]\{7\}[<=>|]\@!/
endfunction

highlight default link ConflictMarker DiffChange

augroup conflict_marker
  autocmd!
  autocmd BufReadPost *  call s:DefineMatch()
augroup END
