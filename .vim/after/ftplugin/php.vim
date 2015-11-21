" ~/.vim/after/ftplugin/php.vim

setlocal textwidth=79
setlocal matchpairs-=<:>
setlocal shiftwidth=4 softtabstop=4 expandtab

let b:commentary_format = '// %s'

nmap <buffer> <LocalLeader>F :execute '!php-cs-fixer fix' expand('%:p')<CR>
