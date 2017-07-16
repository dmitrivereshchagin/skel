" ~/.vim/after/plugin/ale.vim

if !get(g:, 'loaded_ale')
  finish
endif

function! s:StatusFlag() abort
  return ale#statusline#Count(bufnr('%')).total > 0 ? '[E]' : ''
endfunction

call lines#AddStatusFlags(function('s:StatusFlag'))
