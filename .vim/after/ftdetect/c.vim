" ~/.vim/after/ftdetect/c.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.c,*.h  call filetype#Ensure('c')
" vint: +ProhibitAutocmdWithNoGroup
