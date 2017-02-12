" ~/.vim/autoload/cabbrev.vim

function! cabbrev#Cabbrev(buffer, lhs, rhs) abort
  let l:args = a:buffer ? '<buffer> <expr>' : '<expr>'
  return printf('cnoreabbrev %s %s cabbrev#ExpandAbbreviation(%s, %s)',
        \ l:args, a:lhs, s:Quote(a:lhs), s:Quote(a:rhs))
endfunction

function! cabbrev#ExpandAbbreviation(lhs, rhs) abort
  return getcmdtype() ==# ':' && getcmdline() ==# a:lhs ? a:rhs : a:lhs
endfunction

function! s:Quote(str) abort
  return "'" . substitute(a:str, "'", "''", 'g') . "'"
endfunction
