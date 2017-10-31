" ~/.vim/after/ftplugin/go.vim

setlocal shiftwidth=8 softtabstop=0 noexpandtab

call mine#filetype#UndoFtplugin('setlocal shiftwidth< softtabstop< expandtab<')


let b:syntastic_checkers = ['go']

call mine#filetype#UndoFtplugin('unlet! b:syntastic_checkers')


nnoremap <buffer> cp= :Fmt<CR>
nnoremap <buffer> cpi :Import <C-R><C-W><CR>

call mine#filetype#UndoFtplugin([
    \ 'silent! nunmap <buffer> cp=',
    \ 'silent! nunmap <buffer> cpi',
    \ ])
