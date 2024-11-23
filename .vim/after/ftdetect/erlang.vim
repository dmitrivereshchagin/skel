" ~/.vim/after/ftdetect/erlang.vim

" vint: -ProhibitAutocmdWithNoGroup
autocmd BufNewFile,BufRead */src/*.app.src  call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead elvis.config     call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead rebar.config     call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead rebar.lock       call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead sys.config       call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead sys[._]*.config  call mine#filetype#Ensure('erlang')
autocmd BufNewFile,BufRead *[._]sys.config  call mine#filetype#Ensure('erlang')
" vint: +ProhibitAutocmdWithNoGroup
