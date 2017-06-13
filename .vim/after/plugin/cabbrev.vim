" ~/.vim/after/plugin/cabbrev.vim

if !get(g:, 'loaded_cabbrev')
  finish
endif

Cabbrev gw  grep\ -w
Cabbrev hh  helpgrep
Cabbrev ww  write!

Cabbrev bt  Breakpoint
Cabbrev btr BreakpointRemove
Cabbrev vt  VdebugTrace
Cabbrev vv  VdebugEval
