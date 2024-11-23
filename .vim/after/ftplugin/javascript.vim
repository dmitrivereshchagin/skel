" ~/.vim/after/ftplugin/javascript.vim

setlocal suffixesadd+=.js iskeyword+=$
call mine#filetype#UndoPlugin('setlocal suffixesadd< iskeyword<')

let b:syntastic_checkers = ['eslint']
call mine#filetype#UndoPlugin('unlet! b:syntastic_checkers')
