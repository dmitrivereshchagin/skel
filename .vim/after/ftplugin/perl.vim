" ~/.vim/after/ftplugin/perl.vim

setlocal matchpairs+=<:>

call mine#filetype#UndoFtplugin('setlocal matchpairs<')


if executable('perltidy')
  setlocal equalprg=perltidy\ -q
endif

call mine#filetype#UndoFtplugin('setlocal equalprg<')
