" ~/.vim/after/ftplugin/go.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab
setlocal foldmethod=syntax

let b:syntastic_checkers = ['go']

nmap <buffer> <LocalLeader>= :Fmt<CR>
nmap <buffer> <LocalLeader>i :Import <C-R><C-W><CR>

call undo#ftplugin(
      \ 'setlocal shiftwidth< softtabstop< expandtab< foldmethod<',
      \ 'unlet! b:syntastic_checkers',
      \ 'silent! nunmap <buffer> <LocalLeader>=',
      \ 'silent! nunmap <buffer> <LocalLeader>i',
      \ )
