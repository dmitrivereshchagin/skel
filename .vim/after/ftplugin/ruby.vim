" ~/.vim/after/ftplugin/ruby.vim

setlocal shiftwidth=2 softtabstop=2
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

setlocal iskeyword+=!,?
call mine#filetype#UndoPlugin('setlocal iskeyword<')
