" ~/.vim/after/ftdetect/erlang.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead */src/*.app.src  call filetype#Set('erlang')
autocmd BufNewFile,BufRead elvis.config     call filetype#Set('erlang')
autocmd BufNewFile,BufRead rebar.config     call filetype#Set('erlang')
autocmd BufNewFile,BufRead rebar.lock       call filetype#Set('erlang')
autocmd BufNewFile,BufRead sys.config       call filetype#Set('erlang')
autocmd BufNewFile,BufRead sys[._]*.config  call filetype#Set('erlang')
autocmd BufNewFile,BufRead *[._]sys.config  call filetype#Set('erlang')
" vint: +ProhibitAutocmdWithNoGroup
