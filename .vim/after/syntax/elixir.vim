" ~/.vim/after/syntax/elixir.vim

syntax match elixirDoc /@\w*doc\>/

syntax cluster elixirDocStringContained
    \ contains=elixirDocTest,elixirTodo,@Spell

silent! syntax clear elixirDocTest
syntax region elixirDocTest
    \ start=/^\s*iex\%((.\{-})\)\?>/
    \ end=/^\s*$/
    \ contained
    \ contains=@NoSpell
    \ transparent

syntax match elixirImpl /@impl\>/

syntax match elixirType /@\%(callback\|opaque\|spec\|typep\?\)\>/

highlight link elixirDoc                 Comment
highlight link elixirDocSigilDelimiter   elixirDocString
highlight link elixirDocString           elixirDoc
highlight link elixirDocStringDelimiter  elixirDocString
highlight link elixirImpl                Comment
highlight link elixirType                Comment
highlight link elixirUnusedVariable      NONE
