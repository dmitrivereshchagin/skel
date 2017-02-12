" ~/.vim/plugin/cabbrev.vim

if exists('g:loaded_cabbrev') || &compatible
  finish
endif
let g:loaded_cabbrev = 1

command -nargs=+ -bang Cabbrev
      \ execute cabbrev#Cabbrev('<bang>' == '!', <f-args>)
