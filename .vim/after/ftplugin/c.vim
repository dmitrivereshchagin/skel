" ~/.vim/after/ftplugin/c.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab
setlocal foldmethod=syntax

let b:surround_56 = "/* \r */"

iabbrev <buffer> #d #define
iabbrev <buffer> #i #include
iabbrev <buffer> #p #pragma
iabbrev <buffer> #u #undef

call undo#ftplugin(
      \ 'setlocal shiftwidth< softtabstop< expandtab< foldmethod<',
      \ 'unlet b:surround_56',
      \ 'iunabbrev <buffer> #d',
      \ 'iunabbrev <buffer> #i',
      \ 'iunabbrev <buffer> #p',
      \ 'iunabbrev <buffer> #u'
      \ )
