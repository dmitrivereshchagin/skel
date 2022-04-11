" ~/.vim/after/ftdetect/erlang.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead */src/*.app.src  call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead elvis.config     call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead rebar.config     call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead rebar.lock       call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead sys.config       call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead sys[._]*.config  call filetype#Ensure('erlang')
autocmd BufNewFile,BufRead *[._]sys.config  call filetype#Ensure('erlang')
" vint: +ProhibitAutocmdWithNoGroup
