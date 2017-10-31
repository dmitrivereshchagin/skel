" ~/.vim/after/ftplugin/erlang.vim

setlocal shiftwidth=2 softtabstop=2

call mine#filetype#UndoFtplugin('setlocal shiftwidth< softtabstop<')


let b:surround_46 = "<<\r>>"
let b:surround_62 = "<<\"\r\">>"

call mine#filetype#UndoFtplugin('unlet! b:surround_46 b:surround_62')


inoreabbrev <buffer> <expr> != v:char == '=' ? '=/' : '/='
inoreabbrev <buffer> <expr> == v:char == '=' ? '=:' : '=='

" NOTE: the following shades bit string generator.
inoreabbrev <buffer> <= =<

call mine#filetype#UndoFtplugin([
    \ 'silent! iunabbrev <buffer> !=',
    \ 'silent! iunabbrev <buffer> ==',
    \ 'silent! iunabbrev <buffer> <=',
    \ ])


inoreabbrev <buffer> <expr> -m printf('-module(%s).', expand('%:t:r'))
inoreabbrev <buffer> -o -opaque
inoreabbrev <buffer> -s -spec
inoreabbrev <buffer> -t -type

call mine#filetype#UndoFtplugin([
    \ 'silent! iunabbrev <buffer> -m',
    \ 'silent! iunabbrev <buffer> -o',
    \ 'silent! iunabbrev <buffer> -s',
    \ 'silent! iunabbrev <buffer> -t',
    \ ])
