" ~/.vim/autoload/mine/alias.vim

function! s:TrimLeft(str) abort
  return substitute(a:str, '\v^\s+', '', '')
endfunction

function! mine#alias#Command(lhs, rhs) abort
  let l:command = 'cnoreabbrev <expr> %s mine#alias#Expand(%s, %s)'
  return printf(l:command, a:lhs, string(a:lhs), string(a:rhs))
endfunction

function! mine#alias#Expand(lhs, rhs) abort
  if getcmdtype() isnot# ':'
    return a:lhs
  endif
  if s:TrimLeft(getcmdline()) isnot# a:lhs
    return a:lhs
  endif
  return a:rhs
endfunction
