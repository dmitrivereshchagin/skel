" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

if findfile('.eslintrc', expand('%:p:h') . ';') != ''
  let b:syntastic_checkers = ['eslint']
endif

nnoremap <buffer> <LocalLeader>d :TernDef<CR>

call undo#ftplugin(
      \ 'setlocal iskeyword<',
      \ 'unlet! b:syntastic_checkers',
      \ 'silent! nunmap <buffer> <LocalLeader>d',
      \ )
