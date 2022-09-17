" ~/.vim/after/ftplugin/c.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab
call filetype#UndoPlugin('setlocal shiftwidth< softtabstop< expandtab<')

inoreabbrev <buffer> #d  #define
inoreabbrev <buffer> #i  #include
inoreabbrev <buffer> #p  #pragma
inoreabbrev <buffer> #u  #undef
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['#d', '#i', '#p', '#u'])

inoreabbrev <buffer> #l  #pragma unroll
inoreabbrev <buffer> _i  __always_inline
call filetype#UndoPlugin('silent! iunabbrev <buffer>', ['#l', '_i'])
