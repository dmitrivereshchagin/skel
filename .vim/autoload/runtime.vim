" ~/.vim/autoload/runtime.vim

function! s:Globpath(path, glob) abort
  if !has#('patch-7.4.279')
    return split(globpath(a:path, a:glob), '\n')
  endif
  return globpath(a:path, a:glob, 0, 1)
endfunction

function! runtime#FindFirst(glob) abort
  let l:files = s:Globpath(&runtimepath, a:glob)
  return get(l:files, 0, '')
endfunction
