" ~/.vim/after/plugin/netrw.vim

if exists(':Explore') != 2
  finish
endif

augroup after_netrw
  autocmd!
  autocmd VimEnter *  if !argc() && line2byte('$') == -1
  autocmd VimEnter *    Explore
  autocmd VimEnter *  endif
augroup END
