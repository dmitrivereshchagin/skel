" ~/.vim/after/syntax/erlang.vim

silent! syntax clear erlangAnnotation
silent! syntax clear erlangCommentAnnotation

syntax region erlangTypeSpec
    \ start=/^\s*-\%(callback\|opaque\|spec\|type\)\s\+/
    \ end=/\%(%.*\)\@<!\.\s*\%(%.*\)\?$/
    \ contains=erlangComment
    \ keepend

highlight link erlangTypeSpec Comment
