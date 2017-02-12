" ~/.vim/after/ftplugin/erlang.vim

setlocal shiftwidth=2 softtabstop=2

iabbrev <buffer> <expr> !=  v:char == '=' ? '=/'  : '/='
iabbrev <buffer> <expr> === v:char == '=' ? '===' : '=:='

call filetype#UndoFtplugin(
      \ 'setlocal shiftwidth< softtabstop<',
      \ 'silent! iunabbrev <buffer> !=',
      \ 'silent! iunabbrev <buffer> ===',
      \ )
