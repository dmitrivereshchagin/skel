" ~/.vim/after/ftplugin/perl.vim

setlocal matchpairs+=<:>
call mine#filetype#UndoPlugin('setlocal matchpairs<')

if executable('perltidy')
  setlocal equalprg=perltidy\ --quiet
  call mine#filetype#UndoPlugin('setlocal equalprg<')
endif
