" ~/.vim/after/ftdetect/ruby.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead [vV]agrantfile  call filetype#Ensure('ruby')
" vint: +ProhibitAutocmdWithNoGroup
