" ~/.vim/after/plugin/ale.vim

if exists(':ALELint') != 2
  finish
endif

function! ALEStatuslineFlag() abort
  let l:count = ale#statusline#Count(bufnr('%'))
  return l:count.total > 0 ? '[!]' : ''
endfunction
