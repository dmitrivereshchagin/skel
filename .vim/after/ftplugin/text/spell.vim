" ~/.vim/after/ftplugin/text/spell.vim

let &l:spell = !&readonly && &modifiable
call filetype#UndoPlugin('setlocal spell<')
