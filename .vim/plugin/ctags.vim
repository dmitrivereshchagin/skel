" ~/.vim/plugin/ctags.vim

if exists('g:loaded_ctags') || &compatible
  finish
endif
let g:loaded_ctags = 1

command -nargs=* Ctags execute mine#ctags#Ctags(<q-args>)
