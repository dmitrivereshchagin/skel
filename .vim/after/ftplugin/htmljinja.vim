" ~/.vim/after/ftplugin/htmljinja.vim

let b:commentary_format = '{# %s #}'

call undo#ftplugin('unlet! b:commentary_format')
