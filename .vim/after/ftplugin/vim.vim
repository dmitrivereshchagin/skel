" ~/.vim/after/ftplugin/vim.vim

setlocal shiftwidth=2 softtabstop=2 keywordprg=:help

call filetype#UndoFtplugin('setlocal shiftwidth< softtabstop< keywordprg<')
