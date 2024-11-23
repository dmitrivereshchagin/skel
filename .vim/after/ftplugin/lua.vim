" ~/.vim/after/ftplugin/lua.vim

setlocal shiftwidth=2 softtabstop=2
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

inoreabbrev <buffer> !=  ~=
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer> !=')
