" ~/.vim/after/syntax/elixir.vim

syntax match elixirDoc /@\w*doc\>/

syntax cluster elixirDocStringContained contains=elixirTodo,@Spell

syntax match elixirImpl /@impl\>/

syntax match elixirType /@\%(callback\|opaque\|spec\|typep\?\)\>/

highlight link elixirDoc                 Comment
highlight link elixirDocSigilDelimiter   elixirDoc
highlight link elixirDocStringDelimiter  elixirDoc
highlight link elixirImpl                Comment
highlight link elixirType                Comment
highlight link elixirUnusedVariable      NONE
