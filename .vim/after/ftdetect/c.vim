" ~/.vim/after/ftdetect/c.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.c,*.h  call mine#filetype#Ensure('c')
" vint: +ProhibitAutocmdWithNoGroup
