" ~/.vim/after/ftplugin/go.vim

setlocal formatoptions+=ro
call filetype#UndoPlugin('setlocal formatoptions<')

setlocal shiftwidth=8 softtabstop=0 noexpandtab
call filetype#UndoPlugin('setlocal shiftwidth< softtabstop< expandtab<')

let b:syntastic_checkers = ['go']
call filetype#UndoPlugin('unlet b:syntastic_checkers')

nnoremap <buffer> <LocalLeader>=  :Fmt<CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>=')

nnoremap <buffer> <LocalLeader>i  :Import <C-R><C-W><CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>i')
