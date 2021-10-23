" ~/.vim/after/ftdetect/php.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead .php_cs{,.dist}  set filetype=php
" vint: +ProhibitAutocmdWithNoGroup
