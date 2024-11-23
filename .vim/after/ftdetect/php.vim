" ~/.vim/after/ftdetect/php.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead .php_cs{,.dist}  call mine#filetype#Ensure('php')
" vint: +ProhibitAutocmdWithNoGroup
