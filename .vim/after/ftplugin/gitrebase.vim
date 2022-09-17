" ~/.vim/after/ftplugin/gitrebase.vim

nnoremap <buffer> C  :<C-U>Cycle<CR>
call filetype#UndoPlugin('silent! nunmap <buffer> C')
