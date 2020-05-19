" ~/.vim/after/ftplugin/ruby.vim

setlocal shiftwidth=2 softtabstop=2
call filetype#UndoPlugin('setlocal shiftwidth< softtabstop<')

setlocal iskeyword+=!,?
call filetype#UndoPlugin('setlocal iskeyword<')
