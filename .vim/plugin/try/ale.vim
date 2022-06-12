" ~/.vim/plugin/try/ale.vim

if exists('g:tried_ale_plugin')
  finish
endif
let g:tried_ale_plugin = 1

" Let ALE check if required features are available.
runtime plugin/ale.vim

if exists('g:loaded_ale')
  let g:loaded_syntastic_plugin = 1
endif
