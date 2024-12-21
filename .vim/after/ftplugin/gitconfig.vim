" ~/.vim/after/ftplugin/gitconfig.vim

execute 'setlocal shiftwidth=' . &l:tabstop 'softtabstop=0 noexpandtab'
call mine#filetype#UndoPlugin('setlocal shiftwidth< softtabstop< expandtab<')
