" ~/.vim/plugin/cursor.vim

if exists('g:loaded_cursor') || &compatible
  finish
endif
let g:loaded_cursor = 1

augroup cursor
  autocmd!
  autocmd WinEnter * call s:restore()
  autocmd WinLeave * call s:hide()
augroup END

function! s:hide() abort
  let w:cursor = {'column': &l:cursorcolumn, 'line': &l:cursorline}
  setlocal nocursorcolumn nocursorline
endfunction

function! s:restore() abort
  if exists('w:cursor.column')
    let &l:cursorcolumn = w:cursor.column
  endif
  if exists('w:cursor.line')
    let &l:cursorline = w:cursor.line
  endif
endfunction
