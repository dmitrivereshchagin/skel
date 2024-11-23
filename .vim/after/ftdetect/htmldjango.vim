" ~/.vim/after/ftdetect/htmldjango.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.twig  call mine#filetype#Ensure('htmldjango')
" vint: +ProhibitAutocmdWithNoGroup
