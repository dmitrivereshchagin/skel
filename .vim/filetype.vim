" ~/.vim/filetype.vim

if exists('g:did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.twig setfiletype htmljinja
  autocmd BufNewFile,BufRead .js{cs,hint}rc setfiletype json
  autocmd BufNewFile,BufRead .php_cs setfiletype php
augroup END

" vim:set shiftwidth=2:
