" ~/.vim/after/ftplugin/perl.vim

setlocal matchpairs+=<:>

if executable('perltidy')
  setlocal equalprg=perltidy\ -q
endif

call undo#ftplugin('setlocal matchpairs< equalprg<')
