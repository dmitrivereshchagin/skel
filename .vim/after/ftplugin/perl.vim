" ~/.vim/after/ftplugin/perl.vim

setlocal matchpairs+=<:>

if executable('perltidy')
  setlocal equalprg=perltidy\ -q
endif

call filetype#UndoFtplugin('setlocal matchpairs< equalprg<')
