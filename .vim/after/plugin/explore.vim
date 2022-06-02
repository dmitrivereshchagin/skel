" ~/.vim/after/plugin/explore.vim

let s:explore =
    \ exists(':Dirvish') == 2 ? {'cmd': 'Dirvish'} :
    \ exists(':Explore') == 2 ? {'cmd': 'Explore', 'map': 1} :
    \ {}
if !exists('s:explore.cmd')
  finish
endif

augroup explore
  autocmd!
  autocmd VimEnter *  if !argc() && line2byte('$') == -1
  autocmd VimEnter *    execute s:explore.cmd
  autocmd VimEnter *  endif
augroup END

if get(s:explore, 'map', 0)
  execute printf('nnoremap - :<C-U>%s<CR>', s:explore.cmd)
endif
