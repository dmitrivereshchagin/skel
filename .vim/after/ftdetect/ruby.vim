" ~/.vim/after/ftdetect/ruby.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead [vV]agrantfile  set filetype=ruby
" vint: +ProhibitAutocmdWithNoGroup
