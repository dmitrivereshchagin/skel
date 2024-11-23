" ~/.vim/after/ftplugin/markdown.vim

runtime! ftplugin/text/spell.vim

setlocal formatoptions+=ro textwidth=72
call mine#filetype#UndoPlugin('setlocal formatoptions< textwidth<')
