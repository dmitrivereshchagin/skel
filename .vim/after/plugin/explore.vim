" ~/.vim/after/plugin/explore.vim

let s:EXPLORE =
    \ exists(':Dirvish') == 2 ? {'command': 'Dirvish'} :
    \ exists(':Explore') == 2 ? {'command': 'Explore', 'map': 1} :
    \ {}
if !exists('s:EXPLORE.command')
  finish
endif

augroup explore
  autocmd!
  autocmd VimEnter *  if !argc() && line2byte('$') == -1
  autocmd VimEnter *    execute s:EXPLORE.command
  autocmd VimEnter *  endif
augroup END

if get(s:EXPLORE, 'map')
  execute printf('nnoremap - :<C-U>%s<CR>', s:EXPLORE.command)
endif
