" ~/.vim/after/ftdetect/c.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.c,*.h  set filetype=c
" vint: +ProhibitAutocmdWithNoGroup
