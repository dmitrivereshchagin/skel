" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

if findfile('.eslintrc', expand('%:p:h') . ';') != ''
  let b:syntastic_checkers = ['eslint']
endif

nnoremap <buffer> <LocalLeader>d :TernDef<CR>
nnoremap <buffer> <LocalLeader>r :TernRefs<CR>
nnoremap <buffer> <LocalLeader>t :TernType<CR>

call undo#ftplugin(
      \ 'setlocal iskeyword<',
      \ 'unlet! b:syntastic_checkers',
      \ 'silent! nunmap <buffer> <LocalLeader>d',
      \ 'silent! nunmap <buffer> <LocalLeader>r',
      \ 'silent! nunmap <buffer> <LocalLeader>t',
      \ )
