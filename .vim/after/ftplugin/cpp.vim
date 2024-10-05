" ~/.vim/after/ftplugin/cpp.vim

let b:commentary_format = '// %s'
call filetype#UndoPlugin('unlet! b:commentary_format')
