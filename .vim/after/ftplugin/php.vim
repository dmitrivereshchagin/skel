" ~/.vim/after/ftplugin/php.vim

setlocal matchpairs-=<:>

let b:commentary_format = '// %s'

nmap <buffer> <LocalLeader>= :!php-cs-fixer fix <C-R>=shellescape(expand('%:p'))<CR><CR>

call undo#ftplugin(
      \ 'setlocal matchpairs<',
      \ 'unlet b:commentary_format',
      \ 'nunmap <buffer> <LocalLeader>='
      \ )
