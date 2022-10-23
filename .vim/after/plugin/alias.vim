" ~/.vim/after/plugin/alias.vim

if exists(':Alias') != 2
  finish
endif

Alias gw   grep\ -w
Alias hh   helpgrep
Alias th   tab\ help
Alias thh  tab\ helpgrep
Alias tta  tab\ tag
Alias tts  tab\ tselect
Alias ww   write!

Alias man  Man
Alias tam  tab\ Man

Alias ss   ALESymbolSearch\ -relative

Alias bt   Breakpoint
Alias btr  BreakpointRemove
Alias vt   VdebugTrace
Alias vv   VdebugEval

Alias ct   Ctags
Alias et   ErlangTags

Alias gb   Git\ blame
Alias gd   Gdiffsplit
Alias git  Git
