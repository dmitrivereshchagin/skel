" ~/.vim/autoload/cabbrev.vim

function! cabbrev#command(buffer, lhs, rhs) abort
  let l:args = a:buffer ? '<buffer> <expr>' : '<expr>'
  return printf('cnoreabbrev %s %s cabbrev#expand(%s, %s)',
        \ l:args, a:lhs, s:quote(a:lhs), s:quote(a:rhs))
endfunction

function! cabbrev#expand(lhs, rhs) abort
  return getcmdtype() == ':' && getcmdline() ==# a:lhs ? a:rhs : a:lhs
endfunction

function! s:quote(str) abort
  return "'" . substitute(a:str, "'", "''", 'g') . "'"
endfunction
