" ~/.vim/autoload/mine/value.vim

function! mine#value#IsCallable(value) abort
  return mine#value#IsFuncref(a:value) || exists('*' . a:value)
endfunction


function! mine#value#IsFuncref(value) abort
  return type(a:value) == type(function('tr'))
endfunction


function! mine#value#IsList(value) abort
  return type(a:value) == type([])
endfunction


function! mine#value#EnsureList(value) abort
  return mine#value#IsList(a:value) ? a:value : [a:value]
endfunction
