" ~/.vim/autoload/mine/alias.vim

function! mine#alias#Alias(lhs, rhs) abort
  return printf('cnoreabbrev <expr> %s mine#alias#Expand(%s, %s)',
      \ a:lhs, s:Quote(a:lhs), s:Quote(a:rhs))
endfunction


function! mine#alias#Expand(lhs, rhs) abort
  return getcmdtype() ==# ':' && getcmdline() ==# a:lhs ? a:rhs : a:lhs
endfunction


function! s:Quote(str) abort
  return "'" . substitute(a:str, "'", "''", 'g') . "'"
endfunction
