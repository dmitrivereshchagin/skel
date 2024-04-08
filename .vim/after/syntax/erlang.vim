" ~/.vim/after/syntax/erlang.vim

syntax match erlangEDocTodo /@\%(todo\|TODO\)\>/ contained

silent! syntax clear erlangComment
syntax match erlangComment /%.*/ contains=erlangEDocTodo,erlangTodo,@Spell

silent! syntax clear erlangString
syntax region erlangString start=/"/ skip=/\\\\\|\\"/ end=/"/
syntax region erlangString start=/\z(""""*\)/ end=/^\s*\z1/

syntax region erlangSigil start=/\~[bs]\?(/  skip=/\\\\\|\\)/ end=/)/
syntax region erlangSigil start=/\~[bs]\?\[/ skip=/\\\\\|\\]/ end=/]/
syntax region erlangSigil start=/\~[bs]\?{/  skip=/\\\\\|\\}/ end=/}/
syntax region erlangSigil start=/\~[bs]\?</  skip=/\\\\\|\\>/ end=/>/
syntax region erlangSigil start=/\~[bs]\?\z([\/|'"`#]\)/ skip=/\\\\\|\\\z1/ end=/\z1/
syntax region erlangSigil start=/\~[BS](/  end=/)/
syntax region erlangSigil start=/\~[BS]\[/ end=/]/
syntax region erlangSigil start=/\~[BS]{/  end=/}/
syntax region erlangSigil start=/\~[BS]</  end=/>/
syntax region erlangSigil start=/\~[BS]\z([\/|'"`#]\)/ end=/\z1/
syntax region erlangSigil start=/\~[bsBS]\?\z(""""*\)/ end=/^\s*\z1/

syntax match erlangDoc /^\s*-\s*\%(doc\|moduledoc\)\>/

syntax region erlangDocString
    \ start=/\%(^\s*-\s*\%(doc\|moduledoc\)\s\+\)\@<="/
    \ skip=/\\\\\|\\"/
    \ end=/"/
    \ contains=erlangTodo,@Spell
syntax region erlangDocString
    \ start=/\%(^\s*-\s*\%(doc\|moduledoc\)\s\+\)\@<=\z(""""*\)/
    \ end=/^\s*\z1/
    \ contains=erlangTodo,@Spell
    \ fold

silent! syntax clear erlangType
syntax match erlangType /^\s*-\s*\%(callback\|opaque\|spec\|type\)\>/

syntax sync clear
syntax sync minlines=500

highlight link erlangDoc        Comment
highlight link erlangDocString  erlangDoc
highlight link erlangEDocTodo   Todo
highlight link erlangSigil      erlangString
highlight link erlangType       Comment
