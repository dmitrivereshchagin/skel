" ~/.vim/after/ftplugin/lua.vim

setlocal shiftwidth=2 softtabstop=2
call filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

inoreabbrev <buffer> !=  ~=
call filetype#UndoPlugin('silent! iunabbrev <buffer> !=')
