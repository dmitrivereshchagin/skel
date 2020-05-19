" ~/.vim/plugin/ctags.vim

if exists('g:loaded_ctags')
  finish
endif
let g:loaded_ctags = 1

command -nargs=* -complete=file Ctags
    \ execute '!ctags' empty(<q-args>) ? '-R' : <q-args>
