" ~/.vim/after/ftplugin/php.vim

setlocal textwidth=79
setlocal matchpairs-=<:>
setlocal shiftwidth=4 softtabstop=4 expandtab

let b:commentary_format = '// %s'
let b:surround_{char2nr('-')} = "<?php \r ?>"
let b:surround_{char2nr('=')} = "<?= \r ?>"

nmap <buffer> <LocalLeader>F :execute '!php-cs-fixer fix' expand('%:p')<CR>
