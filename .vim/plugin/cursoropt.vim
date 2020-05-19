" ~/.vim/plugin/cursoropt.vim

if exists('g:loaded_cursoropt')
  finish
endif
let g:loaded_cursoropt = 1

augroup cursoropt
  autocmd!

  autocmd WinLeave *  let w:cursoropt = {}
  autocmd WinLeave *  let w:cursoropt.column = &l:cursorcolumn
  autocmd WinLeave *  let w:cursoropt.line = &l:cursorline

  autocmd WinLeave *  setlocal nocursorcolumn nocursorline

  autocmd WinEnter *  if exists('w:cursoropt.column')
  autocmd WinEnter *    let &l:cursorcolumn = w:cursoropt.column
  autocmd WinEnter *  endif

  autocmd WinEnter *  if exists('w:cursoropt.line')
  autocmd WinEnter *    let &l:cursorline = w:cursoropt.line
  autocmd WinEnter *  endif
augroup END
