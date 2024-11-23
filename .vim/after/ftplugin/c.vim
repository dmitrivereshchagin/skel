" ~/.vim/after/ftplugin/c.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop< expandtab<')

inoreabbrev <buffer> #d  #define
inoreabbrev <buffer> #u  #undef
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['#d', '#u'])

inoreabbrev <buffer> #i  #include
inoreabbrev <buffer> #p  #pragma
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['#i', '#p'])

inoreabbrev <buffer> #l  #pragma unroll
inoreabbrev <buffer> _i  __always_inline
call mine#filetype#UndoPlugin('silent! iunabbrev <buffer>', ['#l', '_i'])
