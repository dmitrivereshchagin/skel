" ~/.vim/after/plugin/fugitive.vim

if !get(g:, 'loaded_fugitive')
  finish
endif

nnoremap <unique> <Leader>gb :Gblame<CR>
nnoremap <unique> <Leader>gd :Gdiff<CR>
nnoremap <unique> <Leader>gs :Gstatus<CR>
