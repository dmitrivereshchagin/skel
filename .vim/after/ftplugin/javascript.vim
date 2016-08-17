" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

nnoremap <buffer> <LocalLeader>d :TernDef<CR>
nnoremap <buffer> <LocalLeader>r :TernRefs<CR>
nnoremap <buffer> <LocalLeader>t :TernType<CR>

call undo#ftplugin(
      \ 'setlocal iskeyword<',
      \ 'silent! nunmap <buffer> <LocalLeader>d',
      \ 'silent! nunmap <buffer> <LocalLeader>r',
      \ 'silent! nunmap <buffer> <LocalLeader>t',
      \ )
