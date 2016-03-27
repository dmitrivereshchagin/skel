" ~/.vim/after/ftplugin/php.vim

setlocal define=^\\s*const
setlocal matchpairs-=<:>
setlocal keywordprg=pman

let b:commentary_format = '// %s'
if exists('$PHP_BINARY')
  let b:syntastic_php_php_exec = $PHP_BINARY
endif

nmap <buffer> <LocalLeader>= :!php-cs-fixer fix <C-R>=shellescape(expand('%:p'))<CR><CR>

call undo#ftplugin(
      \ 'setlocal define< matchpairs< keywordprg<',
      \ 'unlet! b:commentary_format b:syntastic_php_php_exec',
      \ 'silent! nunmap <buffer> <LocalLeader>='
      \ )
