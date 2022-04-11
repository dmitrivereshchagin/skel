" ~/.vim/after/ftdetect/markdown.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.md  call filetype#Ensure('markdown')
" vint: +ProhibitAutocmdWithNoGroup
