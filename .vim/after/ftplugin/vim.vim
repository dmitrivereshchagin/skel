" ~/.vim/after/ftplugin/vim.vim

let &l:path = &runtimepath
call mine#filetype#UndoPlugin('setlocal path<')

setlocal shiftwidth=2 softtabstop=2
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

setlocal keywordprg=:help
call mine#filetype#UndoPlugin('setlocal keywordprg<')

let b:syntastic_checkers = ['vint']
call mine#filetype#UndoPlugin('unlet! b:syntastic_checkers')
