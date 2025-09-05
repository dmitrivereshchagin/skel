" ~/.vim/autoload/mine/echo.vim

function! s:Echo(echo, highlight, format, ...) abort
  execute 'echohl' a:highlight
  echomsg a:echo.prefix . call('s:Printf', [a:format] + a:000)
  echohl NONE
endfunction

function! s:Printf(format, ...) abort
  if empty(a:000)
    " printf() does not work with one argument until 8.0.1557.
    return printf('%s' . a:format, '')
  endif
  return call('printf', [a:format] + a:000)
endfunction

function! mine#echo#WithPrefix(prefix) abort
  return {'prefix': a:prefix, 'Error': function('mine#echo#Error')}
endfunction

function! mine#echo#Error(format, ...) abort dict
  call call('s:Echo', [self, 'ErrorMsg', a:format] + a:000)
endfunction
