" ~/.vim/after/ftplugin/php.vim

let &l:define = '\v\c^\s*%(%(private|protected|public)\s+)?const'
call filetype#UndoPlugin('setlocal define<')

let b:commentary_format = '// %s'
call filetype#UndoPlugin('unlet b:commentary_format')

let b:surround_{char2nr('-')} = "<?php \r ?>"
call filetype#UndoPlugin("unlet b:surround_{char2nr('-')}")

let b:surround_{char2nr('=')} = "<?= \r ?>"
call filetype#UndoPlugin("unlet b:surround_{char2nr('=')}")

" It's assumed that 'autowrite' and 'autoread' are set.
nnoremap <buffer> <LocalLeader>=
    \ :!php-cs-fixer fix --quiet -- <C-R>=shellescape(expand('%:p'))<CR><CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>=')

nnoremap <buffer> <LocalLeader>i  :call PhpInsertUse()<CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>i')

nnoremap <buffer> <LocalLeader>e  :call PhpExpandClass()<CR>
call filetype#UndoPlugin('nunmap <buffer> <LocalLeader>e')

inoreabbrev <buffer> dst  declare(strict_types=1);
call filetype#UndoPlugin('iunabbrev <buffer> dst')
