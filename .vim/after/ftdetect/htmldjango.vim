" ~/.vim/after/ftdetect/htmldjango.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.twig  call filetype#Set('htmldjango')
" vint: +ProhibitAutocmdWithNoGroup
