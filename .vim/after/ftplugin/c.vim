" ~/.vim/after/ftplugin/c.vim

setlocal foldmethod=syntax

let b:surround_{char2nr('8')} = "/* \r */"

iabbrev <buffer> #d #define
iabbrev <buffer> #i #include
iabbrev <buffer> #p #pragma
iabbrev <buffer> #u #undef
