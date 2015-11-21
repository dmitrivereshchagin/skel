" ~/.vim/after/ftplugin/css.vim

setlocal shiftwidth=2 softtabstop=2 expandtab
setlocal iskeyword+=-

let b:surround_{char2nr('8')} = "/* \r */"
