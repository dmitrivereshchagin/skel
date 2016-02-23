" ~/.vim/after/ftplugin/css.vim

setlocal iskeyword+=-

let b:surround_56 = "/* \r */"

call undo#ftplugin('setlocal iskeyword<', 'unlet! b:surround_56')
