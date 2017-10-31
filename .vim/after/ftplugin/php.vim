" ~/.vim/after/ftplugin/php.vim

setlocal define=\\v\\c^\\s*%(%(private\|protected\|public)\\s+)?const
setlocal matchpairs-=<:> keywordprg=pman

call mine#filetype#UndoFtplugin('setlocal define< matchpairs< keywordprg<')


let b:commentary_format = '// %s'

call mine#filetype#UndoFtplugin('unlet! b:commentary_format')


let b:surround_45 = "<?php \r ?>"
let b:surround_61 = "<?= \r ?>"

call mine#filetype#UndoFtplugin('unlet! b:surround_45 b:surround_61')


" NOTE: it's assumed that 'autowrite' and 'autoread' are set.
command! -buffer PhpCsFixer
    \ execute '!php-cs-fixer fix' shellescape(expand('%:p'))

nnoremap <buffer> cp= :PhpCsFixer<CR>

call mine#filetype#UndoFtplugin([
    \ 'silent! delcommand PhpCsFixer',
    \ 'silent! nunmap <buffer> cp=',
    \ ])


nnoremap <buffer> cpe :call PhpExpandClass()<CR>
nnoremap <buffer> cpi :call PhpInsertUse()<CR>

call mine#filetype#UndoFtplugin([
    \ 'silent! nunmap <buffer> cpe',
    \ 'silent! nunmap <buffer> cpi',
    \ ])


inoreabbrev <buffer> dst declare(strict_types=1);
inoreabbrev <buffer> psh eval(\Psy\sh());

call mine#filetype#UndoFtplugin([
    \ 'silent! iunabbrev <buffer> dst',
    \ 'silent! iunabbrev <buffer> psh',
    \ ])
