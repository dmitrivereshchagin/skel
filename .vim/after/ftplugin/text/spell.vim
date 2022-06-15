" ~/.vim/after/ftplugin/text/spell.vim

if !&readonly && &modifiable
  setlocal spell
  call filetype#UndoPlugin('setlocal spell<')
endif
