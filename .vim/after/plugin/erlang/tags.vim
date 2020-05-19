" ~/.vim/after/plugin/erlang/tags.vim

let s:script = globpath(&runtimepath, 'bin/vim_erlang_tags.erl')
if empty(s:script)
  finish
endif

command! -nargs=* -complete=file ErlangTags
    \ execute '!escript' s:script empty(<q-args>) ? '.' : <q-args>
