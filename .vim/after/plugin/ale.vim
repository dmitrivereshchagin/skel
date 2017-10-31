" ~/.vim/after/plugin/ale.vim

if !exists(':ALELint')
  finish
endif

function! s:StatusFlag() abort
  return ale#statusline#Count(bufnr('')).total > 0 ? '[!]' : ''
endfunction

call mine#lines#AddFlags(function('s:StatusFlag'))
