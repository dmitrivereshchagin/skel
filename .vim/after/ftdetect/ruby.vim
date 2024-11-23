" ~/.vim/after/ftdetect/ruby.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead [vV]agrantfile  call mine#filetype#Ensure('ruby')
" vint: +ProhibitAutocmdWithNoGroup
