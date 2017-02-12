" ~/.vim/plugin/cursor.vim

if exists('g:loaded_cursor') || &compatible
  finish
endif
let g:loaded_cursor = 1

augroup cursor
  autocmd!

  autocmd WinLeave *  let w:cursor_options = {}
  autocmd WinLeave *  let w:cursor_options.c = &l:cursorcolumn
  autocmd WinLeave *  let w:cursor_options.l = &l:cursorline

  autocmd WinLeave *  setlocal nocursorcolumn nocursorline

  autocmd WinEnter *  if exists('w:cursor_options.c')
  autocmd WinEnter *    let &l:cursorcolumn = w:cursor_options.c
  autocmd WinEnter *  endif

  autocmd WinEnter *  if exists('w:cursor_options.l')
  autocmd WinEnter *    let &l:cursorline = w:cursor_options.l
  autocmd WinEnter *  endif
augroup END
