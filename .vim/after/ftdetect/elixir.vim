" ~/.vim/after/ftdetect/elixir.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead *.ex,*.exs  call filetype#Ensure('elixir')
autocmd BufNewFile,BufRead mix.lock    call filetype#Ensure('elixir')
" vint: +ProhibitAutocmdWithNoGroup
