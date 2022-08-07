" ~/.vim/after/syntax/erlang.vim

syntax match erlangTodo /@\%(todo\|TODO\)\>/ contained

silent! syntax clear erlangComment
syntax match erlangComment /%.*/ contains=erlangTodo,@Spell

syntax region erlangTypeSpec
    \ start=/^\s*-\s*\%(callback\|opaque\|spec\|type\)\>/
    \ end=/\%(%.*\)\@<!\.\s*\%(%.*\)\?$/
    \ contains=erlangComment
    \ keepend

highlight link erlangTypeSpec  Comment
