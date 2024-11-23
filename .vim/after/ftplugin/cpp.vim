" ~/.vim/after/ftplugin/cpp.vim

let b:commentary_format = '// %s'
call mine#filetype#UndoPlugin('unlet! b:commentary_format')
