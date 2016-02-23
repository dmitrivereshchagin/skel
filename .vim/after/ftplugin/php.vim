" ~/.vim/after/ftplugin/php.vim

setlocal define=^\\s*const
setlocal matchpairs-=<:>
setlocal keywordprg=pman

let b:commentary_format = '// %s'

nmap <buffer> <LocalLeader>= :!php-cs-fixer fix <C-R>=shellescape(expand('%:p'))<CR><CR>

call undo#ftplugin(
      \ 'setlocal define< matchpairs< keywordprg<',
      \ 'unlet! b:commentary_format',
      \ 'silent! nunmap <buffer> <LocalLeader>='
      \ )
