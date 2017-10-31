" ~/.vim/plugin/alias.vim

if exists('g:loaded_alias') || &compatible
  finish
endif
let g:loaded_alias = 1

command -nargs=+ Alias execute mine#alias#Alias(<f-args>)
