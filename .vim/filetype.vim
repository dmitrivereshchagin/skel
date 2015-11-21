" ~/.vim/filetype.vim

if exists('g:did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.md		setfiletype markdown
  autocmd BufNewFile,BufRead *.twig		setfiletype htmljinja
  autocmd BufNewFile,BufRead .js{cs,hint}rc	setfiletype json
  autocmd BufNewFile,BufRead .php_cs		setfiletype php
  autocmd BufNewFile,BufRead [vV]agrantfile	setfiletype ruby
augroup END

" vim:set shiftwidth=2:
