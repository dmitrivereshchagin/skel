" ~/.vim/after/ftplugin/javascript.vim

setlocal iskeyword+=$

call mine#filetype#UndoFtplugin('setlocal iskeyword<')


let b:syntastic_checkers = ['eslint']

call mine#filetype#UndoFtplugin('unlet! b:syntastic_checkers')


if exists(':TernDef')
  nnoremap <silent> <buffer> gd :TernDef<CR>
endif

call mine#filetype#UndoFtplugin('silent! nunmap <buffer> gd')
