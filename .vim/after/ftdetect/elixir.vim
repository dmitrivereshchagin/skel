" ~/.vim/after/ftdetect/elixir.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.ex,*.exs  call mine#filetype#Ensure('elixir')
autocmd BufNewFile,BufRead mix.lock    call mine#filetype#Ensure('elixir')
" vint: +ProhibitAutocmdWithNoGroup
