" ~/.vim/after/ftplugin/htmldjango.vim

let b:commentary_format = '{# %s #}'

call filetype#UndoFtplugin('unlet! b:commentary_format')
