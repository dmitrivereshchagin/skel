" ~/.vim/filetype.vim

if exists('g:did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.md             setfiletype markdown
  autocmd BufNewFile,BufRead *.twig           setfiletype htmldjango
  autocmd BufNewFile,BufRead .php_cs{,.dist}  setfiletype php
  autocmd BufNewFile,BufRead [vV]agrantfile   setfiletype ruby
augroup END
