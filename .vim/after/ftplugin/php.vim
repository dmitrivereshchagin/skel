" ~/.vim/after/ftplugin/php.vim

setlocal define=\\v\\c^\\s*%(%(private\|protected\|public)\\s+)?const
setlocal matchpairs-=<:> keywordprg=pman

let b:commentary_format = '// %s'

if exists('$PHP_BINARY')
  let b:syntastic_php_exec = $PHP_BINARY
endif

" It's assumed that 'autowrite' and 'autoread' are set.
command! -buffer FixCS execute '!php-cs-fixer fix' shellescape(expand('%:p'))

nnoremap <buffer> <LocalLeader>= :FixCS<CR>
nnoremap <buffer> <LocalLeader>e :call PhpExpandClass()<CR>
nnoremap <buffer> <LocalLeader>i :call PhpInsertUse()<CR>

call undo#ftplugin(
      \ 'setlocal define< matchpairs< keywordprg<',
      \ 'unlet! b:commentary_format b:syntastic_php_exec',
      \ 'silent! delcommand FixCS',
      \ 'silent! nunmap <buffer> <LocalLeader>=',
      \ 'silent! nunmap <buffer> <LocalLeader>e',
      \ 'silent! nunmap <buffer> <LocalLeader>i',
      \ )
