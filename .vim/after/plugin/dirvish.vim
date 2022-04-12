" ~/.vim/after/plugin/dirvish.vim

if exists(':Dirvish') != 2
  finish
endif

augroup after_dirvish
  autocmd!
  autocmd VimEnter *  if !argc() && line2byte('$') == -1
  autocmd VimEnter *    Dirvish
  autocmd VimEnter *  endif
augroup END
