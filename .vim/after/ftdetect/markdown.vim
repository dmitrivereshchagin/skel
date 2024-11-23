" ~/.vim/after/ftdetect/markdown.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.md  call mine#filetype#Ensure('markdown')
" vint: +ProhibitAutocmdWithNoGroup
