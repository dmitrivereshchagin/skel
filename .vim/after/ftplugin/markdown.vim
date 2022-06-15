" ~/.vim/after/ftplugin/markdown.vim

runtime! ftplugin/text/spell.vim

setlocal formatoptions+=ro textwidth=72
call filetype#UndoPlugin('setlocal formatoptions< textwidth<')
