" ~/.vim/after/ftplugin/qf.vim

setlocal nowrap relativenumber nobuflisted
call filetype#UndoPlugin('setlocal wrap< relativenumber< buflisted<')

nnoremap <buffer> q  :bdelete<CR>
call filetype#UndoPlugin('nunmap <buffer> q')
