" ~/.vim/after/ftdetect/c.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.c,*.h  call filetype#Set('c')
" vint: +ProhibitAutocmdWithNoGroup
