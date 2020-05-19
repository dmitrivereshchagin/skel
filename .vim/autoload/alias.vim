" ~/.vim/autoload/alias.vim

function! s:TrimLeft(str) abort
  return substitute(a:str, '\v^\s+', '', '')
endfunction

function! alias#Command(lhs, rhs) abort
  let l:command = 'cnoreabbrev <expr> %s alias#Expand(%s, %s)'
  return printf(l:command, a:lhs, string(a:lhs), string(a:rhs))
endfunction

function! alias#Expand(lhs, rhs) abort
  if getcmdtype() isnot# ':'
    return a:lhs
  endif
  if s:TrimLeft(getcmdline()) isnot# a:lhs
    return a:lhs
  endif
  return a:rhs
endfunction
