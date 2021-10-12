" ~/.vim/autoload/os.vim

" getenv() is not available until 8.1.1305.
function! os#Getenv(name) abort
  execute 'return $' . a:name
endfunction

function! os#MkdirAll(path, perm) abort
  if !has#('patch-8.0.1708') && isdirectory(a:path)
    return
  endif
  let l:path = a:path
  if !has#('patch-7.4.6')
    let l:path = substitute(l:path, '\v/+$', '', '')
  endif
  call mkdir(l:path, 'p', a:perm)
endfunction
