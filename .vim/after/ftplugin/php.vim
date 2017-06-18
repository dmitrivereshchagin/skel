" ~/.vim/after/ftplugin/php.vim

setlocal define=\\v\\c^\\s*%(%(private\|protected\|public)\\s+)?const
setlocal matchpairs-=<:> keywordprg=pman

let b:commentary_format = '// %s'

let b:surround_45 = "<?php \r ?>"
let b:surround_61 = "<?= \r ?>"

" It's assumed that 'autowrite' and 'autoread' are set.
command! -buffer FixCS execute '!php-cs-fixer fix' shellescape(expand('%:p'))

nnoremap <buffer> <LocalLeader>= :FixCS<CR>
nnoremap <buffer> <LocalLeader>e :call PhpExpandClass()<CR>
nnoremap <buffer> <LocalLeader>i :call PhpInsertUse()<CR>

iabbrev <buffer> dst declare(strict_types=1);

call filetype#UndoFtplugin(
      \ 'setlocal define< matchpairs< keywordprg<',
      \ 'unlet! b:commentary_format b:surround_45 b:surround_61',
      \ 'silent! delcommand FixCS',
      \ 'silent! nunmap <buffer> <LocalLeader>=',
      \ 'silent! nunmap <buffer> <LocalLeader>e',
      \ 'silent! nunmap <buffer> <LocalLeader>i',
      \ 'silent! iunabbrev <buffer> dst',
      \ )
