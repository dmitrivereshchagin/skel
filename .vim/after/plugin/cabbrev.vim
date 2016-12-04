" ~/.vim/after/plugin/cabbrev.vim

if !exists(':Cabbrev')
  finish
endif

Cabbrev gw grep\ -w
Cabbrev hh helpgrep

Cabbrev bt Breakpoint
Cabbrev vt VdebugTrace
Cabbrev vv VdebugEval
