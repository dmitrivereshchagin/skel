" ~/.vim/after/ftplugin/mail.vim

runtime! ftplugin/text/spell.vim

setlocal formatoptions+=w
call filetype#UndoPlugin('setlocal formatoptions<')
