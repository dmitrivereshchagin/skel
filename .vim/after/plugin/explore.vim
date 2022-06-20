" ~/.vim/after/plugin/explore.vim

let s:EXPLORE =
    \ exists(':Dirvish') == 2 ? {'cmd': 'Dirvish'} :
    \ exists(':Explore') == 2 ? {'cmd': 'Explore', 'map': 1} :
    \ {}
if !exists('s:EXPLORE.cmd')
  finish
endif

augroup explore
  autocmd!
  autocmd VimEnter *  if !argc() && line2byte('$') == -1
  autocmd VimEnter *    execute s:EXPLORE.cmd
  autocmd VimEnter *  endif
augroup END

if get(s:EXPLORE, 'map')
  execute printf('nnoremap - :<C-U>%s<CR>', s:EXPLORE.cmd)
endif
