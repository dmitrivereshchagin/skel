" ~/.vim/after/ftplugin/qf.vim

setlocal nobuflisted nowrap

call mine#filetype#UndoFtplugin('setlocal buflisted< wrap<')


noremap <buffer> <silent> q :<C-U>bdelete<CR>

call mine#filetype#UndoFtplugin('silent! unmap <buffer> q')
