" ~/.vim/after/ftplugin/vim.vim

let &l:path = &runtimepath
call filetype#UndoPlugin('setlocal path<')

setlocal shiftwidth=2 softtabstop=2
call filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

setlocal keywordprg=:help
call filetype#UndoPlugin('setlocal keywordprg<')
