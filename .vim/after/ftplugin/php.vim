" ~/.vim/after/ftplugin/php.vim

let &l:define = '\v\c^\s*%(%(private|protected|public)\s+)?const'
call mine#filetype#UndoPlugin('setlocal define<')

let b:commentary_format = '// %s'
call mine#filetype#UndoPlugin('unlet! b:commentary_format')

let b:surround_{char2nr('-')} = "<?php \r ?>"
call mine#filetype#UndoPlugin('unlet! b:surround_' . char2nr('-'))

let b:surround_{char2nr('=')} = "<?= \r ?>"
call mine#filetype#UndoPlugin('unlet! b:surround_' . char2nr('='))

" It's assumed that 'autowrite' and 'autoread' are set.
command -buffer Format
    \ execute '!php-cs-fixer fix --quiet --' shellescape(expand('%:p'), 1)
call mine#filetype#UndoPlugin('silent! delcommand Format')

nnoremap <buffer> <LocalLeader>=  :<C-U>Format<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>=')

nnoremap <buffer> <LocalLeader>i  :<C-U>call PhpInsertUse()<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>i')

nnoremap <buffer> <LocalLeader>e  :<C-U>call PhpExpandClass()<CR>
call mine#filetype#UndoPlugin('silent! nunmap <buffer> <LocalLeader>e')
