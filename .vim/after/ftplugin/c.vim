" ~/.vim/after/ftplugin/c.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab

call mine#filetype#UndoFtplugin('setlocal shiftwidth< softtabstop< expandtab<')


inoreabbrev <buffer> #d #define
inoreabbrev <buffer> #i #include
inoreabbrev <buffer> #p #pragma
inoreabbrev <buffer> #u #undef

call mine#filetype#UndoFtplugin([
    \ 'silent! iunabbrev <buffer> #d',
    \ 'silent! iunabbrev <buffer> #i',
    \ 'silent! iunabbrev <buffer> #p',
    \ 'silent! iunabbrev <buffer> #u',
    \ ])
