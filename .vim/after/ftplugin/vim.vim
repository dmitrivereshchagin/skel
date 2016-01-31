" ~/.vim/after/ftplugin/vim.vim

setlocal shiftwidth=2 softtabstop=2
setlocal keywordprg=:help

call undo#ftplugin('setlocal shiftwidth< softtabstop< keywordprg<')
