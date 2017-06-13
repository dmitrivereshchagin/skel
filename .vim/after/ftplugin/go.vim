" ~/.vim/after/ftplugin/go.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab

let b:syntastic_checkers = ['go']

nnoremap <buffer> <LocalLeader>= :Fmt<CR>
nnoremap <buffer> <LocalLeader>i :Import <C-R><C-W><CR>

call filetype#UndoFtplugin(
      \ 'setlocal shiftwidth< softtabstop< expandtab<',
      \ 'unlet! b:syntastic_checkers',
      \ 'silent! nunmap <buffer> <LocalLeader>=',
      \ 'silent! nunmap <buffer> <LocalLeader>i',
      \ )
