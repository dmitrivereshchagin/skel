" ~/.vim/after/plugin/alias.vim

if !exists(':Alias')
  finish
endif

Alias gw  grep\ -w
Alias hh  helpgrep
Alias ww  write!

Alias bt  Breakpoint
Alias btr BreakpointRemove
Alias btt BreakpointRemove\ *

Alias vt  VdebugTrace
Alias vv  VdebugEval

Alias ct  Ctags
Alias et  ErlangTags

Alias gb  Gblame
Alias gc  Gcommit
Alias gd  Gdiff
Alias gs  Gstatus
