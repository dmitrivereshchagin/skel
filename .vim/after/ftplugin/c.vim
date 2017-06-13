" ~/.vim/after/ftplugin/c.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab

iabbrev <buffer> #d #define
iabbrev <buffer> #i #include
iabbrev <buffer> #p #pragma
iabbrev <buffer> #u #undef

call filetype#UndoFtplugin(
      \ 'setlocal shiftwidth< softtabstop< expandtab<',
      \ 'silent! iunabbrev <buffer> #d',
      \ 'silent! iunabbrev <buffer> #i',
      \ 'silent! iunabbrev <buffer> #p',
      \ 'silent! iunabbrev <buffer> #u',
      \ )
