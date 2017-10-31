" ~/.vim/plugin/cursor_options.vim

if exists('g:loaded_cursor_options') || &compatible
  finish
endif
let g:loaded_cursor_options = 1

augroup cursor_options
  autocmd!

  autocmd WinLeave *  let w:cursor_options = {}
  autocmd WinLeave *  let w:cursor_options.column = &l:cursorcolumn
  autocmd WinLeave *  let w:cursor_options.line = &l:cursorline

  autocmd WinLeave *  setlocal nocursorcolumn nocursorline

  autocmd WinEnter *  if exists('w:cursor_options.column')
  autocmd WinEnter *    let &l:cursorcolumn = w:cursor_options.column
  autocmd WinEnter *  endif

  autocmd WinEnter *  if exists('w:cursor_options.line')
  autocmd WinEnter *    let &l:cursorline = w:cursor_options.line
  autocmd WinEnter *  endif
augroup END
