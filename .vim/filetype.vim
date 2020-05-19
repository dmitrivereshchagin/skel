" ~/.vim/filetype.vim

if exists('g:did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.c,*.h          setfiletype c

  autocmd BufNewFile,BufRead */src/*.app.src  setfiletype erlang
  autocmd BufNewFile,BufRead elvis.config     setfiletype erlang
  autocmd BufNewFile,BufRead rebar.config     setfiletype erlang
  autocmd BufNewFile,BufRead sys.config       setfiletype erlang
  autocmd BufNewFile,BufRead sys[._]*.config  setfiletype erlang
  autocmd BufNewFile,BufRead *[._]sys.config  setfiletype erlang

  autocmd BufNewFile,BufRead Jenkinsfile      setfiletype groovy

  autocmd BufNewFile,BufRead *.md             setfiletype markdown

  autocmd BufNewFile,BufRead *.twig           setfiletype htmldjango
  autocmd BufNewFile,BufRead .php_cs{,.dist}  setfiletype php

  autocmd BufNewFile,BufRead [vV]agrantfile   setfiletype ruby
augroup END
