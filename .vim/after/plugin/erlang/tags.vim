" ~/.vim/after/plugin/erlang/tags.vim

function! s:FirstInRuntime(glob) abort
  let l:files = split(globpath(&runtimepath, a:glob), '\n')
  return get(l:files, 0, '')
endfunction

let s:script = s:FirstInRuntime('bin/vim_erlang_tags.erl')

if !empty(s:script)
  command! -nargs=* -complete=file ErlangTags
      \ execute '!escript' s:script empty(<q-args>) ? '.' : <q-args>
endif
