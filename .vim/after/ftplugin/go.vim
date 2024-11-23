" ~/.vim/after/ftplugin/go.vim

setlocal formatoptions+=ro
call mine#filetype#UndoPlugin('setlocal formatoptions<')

setlocal shiftwidth=8 softtabstop=0 noexpandtab
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop< expandtab<')

let b:syntastic_checkers = ['go']
call mine#filetype#UndoPlugin('unlet! b:syntastic_checkers')

nnoremap <buffer> <LocalLeader>=  :<C-U>Fmt<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

nnoremap <buffer> <LocalLeader>i  :<C-U>Import <C-R>=expand('<cword>')<CR><CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>i')
