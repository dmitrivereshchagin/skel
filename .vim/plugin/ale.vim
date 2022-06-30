" ~/.vim/plugin/ale.vim

" Let ALE check if required features are available.
runtime bundle/ale/plugin/ale.vim

if exists('g:loaded_ale')
  let g:loaded_syntastic_plugin = 1
endif
