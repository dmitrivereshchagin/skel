" ~/.vim/autoload/mine/echo.vim

function! mine#echo#WithPrefix(prefix) abort
  return {
      \ 'prefix': a:prefix,
      \ 'Message': function('mine#echo#Message'),
      \ 'Error': function('mine#echo#Error'),
      \ }
endfunction

function! mine#echo#Message(highlight, message, ...) abort dict
  execute 'echohl' a:highlight
  " printf() does not work with one argument until 8.0.1557.
  let l:message = len(a:000) > 0
      \ ? call('printf', [a:message] + a:000)
      \ : a:message
  echomsg self.prefix l:message
  echohl NONE
endfunction

function! mine#echo#Error(...) abort dict
  call call(self.Message, ['ErrorMsg'] + a:000, self)
endfunction
