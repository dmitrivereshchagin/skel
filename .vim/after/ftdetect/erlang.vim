" ~/.vim/after/ftdetect/erlang.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead */src/*.app.src  set filetype=erlang
autocmd BufNewFile,BufRead elvis.config     set filetype=erlang
autocmd BufNewFile,BufRead rebar.config     set filetype=erlang
autocmd BufNewFile,BufRead rebar.lock       set filetype=erlang
autocmd BufNewFile,BufRead sys.config       set filetype=erlang
autocmd BufNewFile,BufRead sys[._]*.config  set filetype=erlang
autocmd BufNewFile,BufRead *[._]sys.config  set filetype=erlang
" vint: +ProhibitAutocmdWithNoGroup
