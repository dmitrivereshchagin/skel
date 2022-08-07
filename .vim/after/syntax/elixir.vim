" ~/.vim/after/syntax/elixir.vim

syntax match elixirDoc /@\w*doc\>/

syntax cluster elixirDocStringContained contains=elixirTodo,@Spell

highlight link elixirDoc                 Comment
highlight link elixirDocSigilDelimiter   elixirDoc
highlight link elixirDocStringDelimiter  elixirDoc
highlight link elixirUnusedVariable      NONE
