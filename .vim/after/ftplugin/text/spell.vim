" ~/.vim/after/ftplugin/text/spell.vim

let &l:spell = !&readonly && &modifiable
call mine#filetype#UndoPlugin('setlocal spell<')
