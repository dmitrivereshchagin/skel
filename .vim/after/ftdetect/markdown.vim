" ~/.vim/after/ftdetect/markdown.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.md  set filetype=markdown
" vint: +ProhibitAutocmdWithNoGroup
