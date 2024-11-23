" ~/.vim/autoload/echo.vim

function! echo#WithPrefix(prefix) abort
  return {
      \ 'prefix': a:prefix,
      \ 'Message': function('echo#Message'),
      \ 'Error': function('echo#Error'),
      \}
endfunction

function! echo#Message(highlight, message, ...) abort dict
  execute 'echohl' a:highlight
  " printf() does not work with one argument until 8.0.1557.
  let l:message = len(a:000) > 0
      \ ? call('printf', [a:message] + a:000)
      \ : a:message
  echomsg self.prefix l:message
  echohl NONE
endfunction

function! echo#Error(...) abort dict
  call call(self.Message, ['ErrorMsg'] + a:000, self)
endfunction
