" ~/.vim/after/ftdetect/htmldjango.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.twig  set filetype=htmldjango
" vint: +ProhibitAutocmdWithNoGroup
