" ~/.vim/after/plugin/erlang/tags.vim

let s:ESCRIPT = runtime#FindFirst('bin/vim_erlang_tags.erl')
if empty(s:ESCRIPT)
  finish
endif

command! -nargs=* -complete=file ErlangTags
    \ execute '!escript' s:ESCRIPT empty(<q-args>) ? '.' : <q-args>
