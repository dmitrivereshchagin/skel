" ~/.vim/autoload/cursor.vim

function! cursor#hide() abort
  let w:cursor = {'column': &l:cursorcolumn, 'line': &l:cursorline}
  setlocal nocursorcolumn nocursorline
endfunction

function! cursor#restore() abort
  if exists('w:cursor.column')
    let &l:cursorcolumn = w:cursor.column
  endif
  if exists('w:cursor.line')
    let &l:cursorline = w:cursor.line
  endif
endfunction
