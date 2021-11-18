" ~/.vim/after/ftdetect/ruby.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead [vV]agrantfile  call filetype#Set('ruby')
" vint: +ProhibitAutocmdWithNoGroup
