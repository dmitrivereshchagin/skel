" ~/.vim/after/ftplugin/javascript.vim

setlocal suffixesadd+=.js iskeyword+=$
call filetype#UndoPlugin('setlocal suffixesadd< iskeyword<')

let b:syntastic_checkers = ['eslint']
call filetype#UndoPlugin('unlet b:syntastic_checkers')
