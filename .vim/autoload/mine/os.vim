" ~/.vim/autoload/mine/os.vim

" getenv() is not available until 8.1.1305.
function! mine#os#Getenv(name) abort
  execute 'return $' . a:name
endfunction

function! mine#os#MkdirAll(path, perm) abort
  if !mine#Has('patch-8.0.1708') && isdirectory(a:path)
    return
  endif
  let l:path = a:path
  if !mine#Has('patch-7.4.6')
    let l:path = substitute(l:path, '\v/+$', '', '')
  endif
  call mkdir(l:path, 'p', a:perm)
endfunction
