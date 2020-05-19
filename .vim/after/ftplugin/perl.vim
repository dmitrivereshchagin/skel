" ~/.vim/after/ftplugin/perl.vim

setlocal matchpairs+=<:>
call filetype#UndoPlugin('setlocal matchpairs<')

if executable('perltidy')
  setlocal equalprg=perltidy\ --quiet
  call filetype#UndoPlugin('setlocal equalprg<')
endif
