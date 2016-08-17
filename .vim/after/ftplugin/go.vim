" ~/.vim/after/ftplugin/go.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab foldmethod=syntax

let b:syntastic_checkers = ['go']

nnoremap <buffer> <LocalLeader>= :Fmt<CR>
nnoremap <buffer> <LocalLeader>i :Import <C-R><C-W><CR>

call undo#ftplugin(
      \ 'setlocal shiftwidth< softtabstop< expandtab< foldmethod<',
      \ 'unlet! b:syntastic_checkers',
      \ 'silent! nunmap <buffer> <LocalLeader>=',
      \ 'silent! nunmap <buffer> <LocalLeader>i',
      \ )
