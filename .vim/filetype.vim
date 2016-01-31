" ~/.vim/filetype.vim

if exists('g:did_load_filetypes')
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead *.md   setfiletype markdown
  autocmd BufNewFile,BufRead *.twig setfiletype htmljinja
augroup END
