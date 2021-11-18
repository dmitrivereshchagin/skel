" ~/.vim/after/ftplugin/markdown.vim

setlocal formatoptions+=ro textwidth=72
call filetype#UndoPlugin('setlocal formatoptions< textwidth<')
